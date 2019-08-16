def label = "worker-${UUID.randomUUID().toString()}"

podTemplate(label: label, cloud: 'kubernetes', containers: [
    containerTemplate(
        name: 'jnpm2',
        image: 'jenkins/jnlp-slave:3.27-1',
        ttyEnabled: true,
        privileged: false,
        alwaysPullImage: false,
        workingDir: '/home/jenkins',
        resourceRequestCpu: '1',
        resourceLimitCpu: '1',
        resourceRequestMemory: '1000Mi',
        resourceLimitMemory: '2000Mi',
        envVars: [
            envVar(key: 'JENKINS_URL', value: 'http://cd-jenkins.default.svc.cluster.local:8080'),
        ],
    ),
],
volumes: [
  hostPathVolume(mountPath: '/var/run/docker.sock', hostPath: '/var/run/docker.sock')
]) {
  node(label) {


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
}
