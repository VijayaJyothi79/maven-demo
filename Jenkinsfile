pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Maven Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t maven-demo:latest .'
            }
        }

        stage('Deploy') {
            steps {
                sh 'docker rm -f maven-demo || true'
                sh 'docker run --name maven-demo maven-demo:latest'
            }
        }
    }
}
