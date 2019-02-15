
node{
  stage ('Build') {
 
    git url: 'https://github.com/dileepdwivedi/MyTest'
 
    withMaven(
        // Maven installation declared in the Jenkins "Global Tool Configuration"
        maven: 'Maven',
        // Maven settings.xml file defined with the Jenkins Config File Provider Plugin
        // Maven settings and global settings can also be defined in Jenkins Global Tools Configuration
        mavenSettingsConfig: '/opt/apache-maven-3.6.0/',
        mavenLocalRepo: '.repository'
    ) {
 
      // Run the maven build
      sh "mvn clean package"
 
    } // withMaven will discover the generated Maven artifacts, JUnit Surefire & FailSafe & FindBugs reports...
  }
}
