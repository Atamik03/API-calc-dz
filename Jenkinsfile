pipeline {
    agent any
    stages {      

        stage('Stop') {
            steps {
                script {
                    echo '[] Stopping the operation of the docker container'
                    sh 'docker stop api_calc_container' 
                    sh 'docker rm api_calc_container' 
                }
            }
        }

        stage('Building') {
            steps {
                echo '[] Building a new docker container'
                sh 'docker build -t api_calc:latest .'
                sh 'docker run -d -p 8000:8000 --name api_calc_container api_calc:latest' 
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

       stage('Trivy') {
            steps {
                sh 'trivy images api_calc:latest --format table --severity HIGH,CRITICAL'
            }
       }
    }
}