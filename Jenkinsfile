node('jenkins-slave-maven-centos7'){
        stage('checkout'){
           checkout scm
        }
        stage('Build') {
            sh 'pwd'
            sh 'ls -lash'
            sh 'ls -lash test'
            sh './test/run.sh'
        }
        stage('Test') {
            echo './gradlew --full-stacktrace --info test'
        }

  }
