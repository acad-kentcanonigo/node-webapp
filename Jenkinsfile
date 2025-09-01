pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            script {
                checkout scm
            }
        }
        stage('Build image') {         
            docker.build("node-webapp")    
        }
        stage('Run image') {
            script {
                docker run -d -p 3000:3000 --name node-webapp node-webapp
            }
        }
    }
}
