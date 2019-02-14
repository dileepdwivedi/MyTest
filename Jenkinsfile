pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'make'
                archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true
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
