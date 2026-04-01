pipeline {
    agent any

    stages {

        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/Ih0rk0/test.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t hello-app .'
            }
        }

        stage('Run Ansible in Docker') {
            steps {
                bat '''
                docker run --rm ^
                  -v %cd%:/app ^
                  -w /app ^
                  williamyeh/ansible:alpine3 ^
                  ansible-playbook ansible/deploy.yml -i ansible/inventory.ini
                '''
            }
        }
    }
}