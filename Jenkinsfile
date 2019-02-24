pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                    git url: 'https://github.com/dileepdwivedi/MyTest'
                
                withMaven(
                    maven: '/opt/maven',
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
                //sh "ssh -v ec2-user@172.31.21.219"
                //sh "wget --user=admin --password=admin@123 http://ec2-18-202-18-242.eu-west-1.compute.amazonaws.com/nexus/content/repositories/snapshots/com/mycompany/helloworld/1.0-SNAPSHOT/helloworld-1.0-20190220.041803-1.jar -O ${WORKSPACE}/dileep.jar"
                //sh "scp ${WORKSPACE}/dileep.jar ec2-user@172.31.21.219:/home/ec2-user/"
                sh "ansible -m ping all"
                echo "Ansible successfully"
            }
        }
    }
}
