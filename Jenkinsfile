pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/username/my-flask-app.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t flask-app .'
            }
        }
        stage('Run Unit Tests') {
            steps {
                sh 'pytest tests/test_app.py'
            }
        }
        stage('Run Selenium Tests') {
            steps {
                sh 'python3 tests/selenium_test.py'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker run -p 5000:5000 my-flask-app'
            }
        }
    }
}
