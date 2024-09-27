import groovy.text.GStringTemplateEngine

def getName() {
    def template = '''\
NAME=$(grep -E '^NAME=' .env | cut -d'=' -f2)
'''
    def engine = new GStringTemplateEngine()
    return engine.createTemplate(template).make().toString()
}

pipeline {
    agent any
    stages {      

        stage('Stop') {
            steps {
                echo '[] Stopping the operation of the docker container'
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