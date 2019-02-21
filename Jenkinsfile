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
                //sh "ssh -v ubuntu@172.31.16.191"
                sh "wget --user=admin --password=admin@123 http://ec2-18-202-18-242.eu-west-1.compute.amazonaws.com/nexus/content/repositories/snapshots/com/mycompany/helloworld/1.0-SNAPSHOT/*.jar -O ${WORKSPACE}/"
                sh "scp ${WORKSPACE}/*.jar ec2-user@172.31.21.4:/home/ec2-user/"
                echo "ssh done successfully"
            }
        }
    }
}
