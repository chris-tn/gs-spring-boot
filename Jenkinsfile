 node {
       stage('checkout'){
           checkout scm
        }
        stage('Build') {
            withMaven( // Maven installation declared in the Jenkins "Global Tool Configuration"
                    maven: 'default',
        // Maven settings.xml file defined with the Jenkins Config File Provider Plugin
        // We recommend to define Maven settings.xml globally at the folder level using 
        // navigating to the folder configuration in the section "Pipeline Maven Configuration / Override global Maven configuration"
        // or globally to the entire master navigating to  "Manage Jenkins / Global Tools Configuration"
        mavenSettingsConfig: 'my-maven-settings')  {
                sh 'pwd'
                sh 'ls -lash'
                sh './test/run.sh'
            }
        }
        stage('Test') {
            echo './gradlew --full-stacktrace --info test'
        }
}
