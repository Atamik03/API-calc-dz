pipeline {
    agent any
    stages {      

        stage('Load .env file') {
            steps {
                withEnv(['SHELL=/bin/bash']) {
                    sh script: 'source .env; env', returnStatus: true // Print loaded variables
                    sh script: 'env', returnStatus: true // Print again for confirmation
                }
            }
        }

        stage('Stop') {
            steps {
                echo '[] Stopping the operation of the docker container'
                sh "echo \$NAME" // Print the NAME variable
                sh "docker stop $NAME" 
                sh "docker rm $NAME" 
            }
        }

        stage('Building') {
            steps {
                echo '[] Building a new docker container'
                sh "docker build -t ${env.D_NAME}:latest ."
                sh "docker run -d -p ${env.RM_PORT}:${env.RM_PORT} --name ${env.NAME} ${env.D_NAME}:latest" 
            }
        }

        stage('Bandit') {
            steps {
                sh 'sleep 20'
                sh "docker run --rm ${env.D_NAME}:latest bandit -r . -lll"
            }
        }

        stage('Semgrep') {
            steps {
                sh "docker run --rm ${env.D_NAME}:latest semgrep --config semgrep-config.yaml ."
            }  
        }
    }
}