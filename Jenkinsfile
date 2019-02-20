pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                    git url: 'https://github.com/dileepdwivedi/MyTest'
                    sh "mvn clean package deploy -s settings.xml"
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
