pipeline {
    agent {
        label 'linux-node'
    }
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
                    docker.build('node-webapp')
                }
            }
        }
        stage('Run image') {
            steps {
                script {
                    docker.image('node-webapp').run('-d -p 3000:3000')
                }
            }
        }
    }
}
