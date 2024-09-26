pipeline {
    agent any
    
    stages {        
      stage('Stop') {
            steps {
                echo '[*] Stopping the operation of the docker container'
                sh 'docker stop $(docker ps -q --filter ancestor=APICalc)'  
            }
        }

      stage('Building') {
            steps {
                echo '[*] Building a new docker container'
                sh 'docker build -t APICalc:latest .'
                sh 'docker run -d -p 8000:8000 APICalc'
            }
        }

    stage('Bandit') {
        steps {
        sh 'sleep 20'
        sh 'docker run --rm APICalc:latest bandit -r . -lll'
        }
    }

    stage('Semgrep') {
        steps {
          sh 'docker run --rm APICalc:latest semgrep --config semgrep-config.yaml .'
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