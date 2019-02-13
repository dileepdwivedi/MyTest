pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                mvn clean
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                mvn package
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                mvn deploy
            }
        }
    }
}
