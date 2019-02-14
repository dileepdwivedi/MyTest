pipeline {
    agent any
environment {
    MAVEN_HOME = '/opt/apache-maven-3.6.0'
}
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
    rtMavenRun (
    // Tool name from Jenkins configuration.
    pom: '/var/lib/jenkins/workspace/FirstPipeline/pom.xml',
    goals: 'clean install',
               )
                sh 'make'
                archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true
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
