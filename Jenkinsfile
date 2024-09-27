// name = sh(returnStdout: true, script: 'grep -E "^NAME=" .env | cut -d"=" -f2').trim()


pipeline {
    agent any
    stages {      

        stage('Name') { 
            steps {
                script {
                    def name = sh(returnStdout: true, script: 'grep -E "^NAME=" .env | cut -d"=" -f2').trim()
                }
            }
        }

        stage('Stop') {
            steps {
                script {
                    echo '[] Stopping the operation of the docker container'
                    sh "docker stop $name" 
                    sh "docker rm $name" 
                }
            }
        }

        stage('Building') {
            steps {
                echo '[] Building a new docker container'
                sh "docker build -t $name:latest ."
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