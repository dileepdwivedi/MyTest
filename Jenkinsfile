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
               // sh "scp /var/lib/jenkins/workspace/FirstPipeline/target/helloworld-1.0-SNAPSHOT.jar ec2-user@172.31.21.219:/home/ubuntu/test/"
                //sh "ssh -v ec2-user@172.31.21.219"
                sh "ssh -v ubuntu@172.31.16.191"
                echo "ssh done successfully"
            }
        }
    }
}
