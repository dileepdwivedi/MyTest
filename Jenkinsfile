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
        stage('Ansible init') {
            steps {
                echo 'Deploying....'
                //sh "ssh -v ec2-user@172.31.21.219"
                //sh "wget --user=admin --password=admin123 http://localhost:8081/repository/maven-snapshots/com/mycompany/helloworld/1.0-SNAPSHOT/helloworld-1.0-20190226.121515-2.jar -O ${WORKSPACE}/dileep.jar"
                //sh "scp ${WORKSPACE}/dileep.jar ec2-user@172.31.21.219:/home/ec2-user/"
                script {
                
               def tfHome = tool name: 'Ansible'
                env.PATH = "${tfHome}:${env.PATH}"
                //sh 'ansible --version'
                //sh "ansible -m ping all"
                //sh "wget --user=admin --password=admin123  http://localhost:8081/repository/maven-snapshots/com/mycompany/helloworld/1.0-SNAPSHOT/helloworld-1.0-20190227.071039-15.jar -O ${WORKSPACE}/dileep.jar"
                //sh "scp ${WORKSPACE}/dileep.jar ec2-user@172.31.21.219:/home/ec2-user/"
                  //sh "ansible-playbook web_db.yaml"
                 //echo "Ansible deplyed successfully"
                    
      // withCredentials([usernamePassword(credentialsId: 'git-pass-credentials-ID', passwordVariable: 'London@123#123', usernameVariable: 'dileepdwivedi')]) {
    //sh("git tag -a some_tag -m 'Jenkins'")
    //sh('git push https://${dileepdwivedi}:${London@123#123}@https://github.com/dileepdwivedi/MyTest --tags')
//}
                    

    stage('Pull from Dockerhub'){
	   sh "docker login -u dileepkumar123 -p London@123"
	  sh "docker pull dileepkumar123/docker-exmp"
	}
   
   
    stage('Deploy to Dev Environment'){
       def dockerRun = 'docker run -d -p 8080:8012 --name docker-exmp dileepkumar123/docker-exmp:latest'
       sshagent(['docker-dev']) {
       sh "ssh -o StrictHostKeyChecking=no ec2-user@172.31.21.4 ${dockerRun}"
	       echo 'Docker Image deployed successfully....'
   }
                    
            }
                
            }
        }
      
    }
}
}
