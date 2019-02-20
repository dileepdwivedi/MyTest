pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                    git url: 'https://github.com/dileepdwivedi/MyTest'
                
                withMaven(
                    maven: 'Maven',
                ){
                
                    sh "mvn clean package deploy -s settings.xml"
                }
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
                sh "scp /var/lib/jenkins/workspace/FirstPipeline/target/helloworld-1.0-SNAPSHOT.jar ubuntu@172.31.16.191:/home/ubuntu/test/"
            }
        }
    }
}
