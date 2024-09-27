pipeline {
    agent any
    stages {      

        stage('Read .env file') {
            steps {
                script {
                    env.putAll(readFile('/mnt/hgfs/Ob_Ubuntu/APICalc/.env').split('\n').collectEntries {
                    it.split('=')
                })
                }
            } 
        }

        stage('Stop') {
            steps {
                echo '[*] Stopping the operation of the docker container'
                sh 'docker stop  ${env.NAME}'
                sh 'docker rm  ${env.NAME}'
            }
        }

        stage('Building') {
            steps {
                echo '[*] Building a new docker container'
                sh 'docker build -t ${env.D_NAME}:latest .'
                sh 'docker run -d -p ${env.RM_PORT}:${env.RM_PORT} --name  ${env.NAME} ${env.D_NAME}:latest'
            }
        }

        stage('Bandit') {
   
            steps {
                sh 'sleep 20'
                sh 'docker run --rm ${env.D_NAME}:latest bandit -r . -lll'
            }
        }

        stage('Semgrep') {

            steps {
                sh 'docker run --rm ${env.D_NAME}:latest semgrep --config semgrep-config.yaml .'
            }  
        }
    }
}