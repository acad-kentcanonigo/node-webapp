pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                script {
                    checkout scm
                }
            }
        }
        stage('Build image') {  
            steps {
                script {
                    docker.build("node-webapp")   
                }
            }       
        }
        stage('Run image') {
            steps {
                script {
                    sh 'docker run -d -p 3000:3000 --name node-webapp node-webapp'
                }
            }
        }
    }
}
