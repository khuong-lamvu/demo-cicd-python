pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'flask-cicd-app:latest' // Tên Docker image
        GIT_REPO = 'https://github.com/khuong-lamvu/demo-cicd-python.git' // URL GitHub repo
    }

    stages {
        stage('Checkout Code') {
            steps {
                echo 'Cloning source code...'
                git branch: 'master', url: "${GIT_REPO}"
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                script {
                    dockerImage = docker.build("${DOCKER_IMAGE}")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                echo 'Running Docker container on port 5050...'
                script {
                    dockerImage.run('-p 192.168.1.8:5050:5050') // Map cổng 5050 trên IP 192.168.1.8
                }
            }
        }
    }

    post {
        success {
            echo 'Pipeline executed successfully!'
        }
        failure {
            echo 'Pipeline failed. Please check the logs.'
        }
    }
}
