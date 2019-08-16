node('jenkins-slave-maven-centos7'){
        stage('checkout'){
           checkout scm
        }
        stage('Build') {
            withMaven(mavenSettingsConfig:'my-maven-settings') {
            sh 'pwd'
            sh 'ls -lash'
            sh 'which nvm'
            sh './test/run.sh'
            }
        }
        stage('Test') {
            echo './gradlew --full-stacktrace --info test'
        }

  }
