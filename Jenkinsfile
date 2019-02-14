node {
    // Get Artifactory server instance, defined in the Artifactory Plugin administration page.
    //def server = Artifactory.server "63.32.170.64"
    // Create an Artifactory Maven instance.
    rtServer (
    id: "Artifactory",
    url: "http://ec2-34-243-73-14.eu-west-1.compute.amazonaws.com:8080/",
    username: "Bee",
    password: "London@12345"
)
    def rtMaven = Artifactory.newMavenBuild()
    def buildInfo
    
    stages {

    stage('Clone sources') {
        git url: 'https://github.com/dileepdwivedi/MyTest'
    }

    stage('Artifactory configuration') {
        // Tool name from Jenkins configuration
        rtMaven.tool = "Maven-3.6.0"
        // Set Artifactory repositories for dependencies resolution and artifacts deployment.
        rtMaven.deployer releaseRepo:'libs-release-local', snapshotRepo:'libs-snapshot-local', server: server
        rtMaven.resolver releaseRepo:'libs-release', snapshotRepo:'libs-snapshot', server: server
    }

    stage('Maven build') {
        buildInfo = rtMaven.run pom: '/var/lib/jenkins/workspace/FirstPipeline/pom.xml', goals: 'clean install'
    }

    stage('Publish build info') {
        server.publishBuildInfo buildInfo
    }
}
}

