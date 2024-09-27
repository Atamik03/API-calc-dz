def isContainerRunning() {
    def output = sh(script: """
        docker inspect --format='{{.State.Running}}' \$(docker ps -q --filter ancestor=api_calc)
    """, returnStdout: true)
    return output.trim() == 'true' || output.trim() == '' 
}

pipeline {
    agent any
    stages {
        stage('Stop') {
            when { expression { !isContainerRunning() } }
            steps {
                echo '[] Stopping the operation of the docker container'
                if (sh(script: "docker ps -q --filter ancestor=api_calc", returnStdout: true).trim() != '') {
                    sh 'docker stop $(docker ps -q --filter ancestor=api_calc)'
                }
            }
        }

        stage('BuildAndRun') {
            steps {
                echo '[] Building a new docker container'
                sh 'docker build -t api_calc:latest .'
                sh 'docker run -d -p 8000:8000 api_calc'
            }
        }

        stage('Bandit') {
            steps {
                sh 'docker exec -it api_calc bandit -r . -lll' 
            }
        }

        stage('Semgrep') {
            steps {
                sh 'docker exec -it api_calc semgrep --config semgrep-config.yaml .'
            }  
        }
    }

    post {
        success {
            echo '\033[92m[+] Docker image built and pushed successfully!\033[39m'
        }
        failure {
            echo '\033[91m[-] Something went wrong with the build.\033[39m'
        }
    }
}