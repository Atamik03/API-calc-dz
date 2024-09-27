def isContainerRunning() {
    def runningContainers = sh(script: "docker ps -q --filter ancestor=api_calc", returnStdout: true).trim()
    return runningContainers != ''
}

pipeline {
    agent any
    stages {
        stage('Stop') {
            when { expression { !isContainerRunning() } }
            steps {
                echo 'Stopping the operation of the docker container'
                sh script: '''
                    if [[ "$(docker ps -q --filter ancestor=api_calc)" != "" ]]; then
                        docker stop $(docker ps -q --filter ancestor=api_calc)
                    fi
                '''
            }
        }

        stage('BuildAndRun') {
            steps {
                echo 'Building a new docker container'
                sh script: 'docker build -t api_calc:latest .'
                sh script: 'docker run -d -p 8000:8000 api_calc -i', returnStdout: true
                script {
                    containerId = sh(script: 'docker ps -aq --filter ancestor=api_calc', returnStdout: true).trim()
                }
            }
        }

        stage('Bandit') {
            steps {
                sh script: "docker exec -it ${containerId} bandit -r . -lll"
            }
        }

        stage('Semgrep') {
            steps {
                sh script: "docker exec -it ${containerId} semgrep --config semgrep-config.yaml ."
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
