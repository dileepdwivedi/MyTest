pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
    rtMavenRun (
    // Tool name from Jenkins configuration.
    tool: MAVEN_TOOL,
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
