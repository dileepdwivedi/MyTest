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
                //sh "wget --user=admin --password=admin123 http://localhost:8081/repository/maven-snapshots/com/mycompany/helloworld/1.0-SNAPSHOT/helloworld-1.0-20190226.121515-2.jar -O ${WORKSPACE}/dileep.jar"
                //sh "scp ${WORKSPACE}/dileep.jar ec2-user@172.31.21.219:/home/ec2-user/"
                script {
                
               def tfHome = tool name: 'Ansible'
                env.PATH = "${tfHome}:${env.PATH}"
                   sh 'ansible --version'
                 //sh "ansible -m ping all"
                 echo "Ansible successfully"
                    
            }
                
            }
        }
    }
}
