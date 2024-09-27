pipeline {
    agent any
    stages {      

        stage('Read .env file') {
           steps {
               script {
                   def envVars = [:] 
                   readFile(file: '.env').split('\n').each { line ->
                       if (line.contains('=')) {
                           def parts = line.split('=')
                           envVars[parts[0].trim()] = parts[1].trim() 
                        }
                    }
                   env.putAll(envVars)
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