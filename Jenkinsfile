pipeline {
    agent any
    
    stages {        
        stage('Stop') {
            def isContainerRunning() {
                return sh script: "docker inspect --format='{{.State.Running}}' $(docker ps -q --filter ancestor=api_calc)", returnStdout: true
            }

            when { expression { !isContainerRunning().trim().equals('true') } } 
                steps {
                    echo '[*] Stopping the operation of the docker container'
                    sh 'docker stop $(docker ps -q --filter ancestor=api_calc)'  
            }
        }

        stage('Building') {
            steps {
                echo '[*] Building a new docker container'
                sh 'docker build -t api_calc:latest .'
                sh 'docker run -d -p 8000:8000 api_calc'
            }
        }

        stage('Bandit') {
            steps {
                sh 'sleep 20'
                sh 'docker run --rm api_calc:latest bandit -r . -lll'
            }
        }

        stage('Semgrep') {
            steps {
                sh 'docker run --rm api_calc:latest semgrep --config semgrep-config.yaml .'
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