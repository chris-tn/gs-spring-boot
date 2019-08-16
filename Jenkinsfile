node('jenkins-slave-maven-centos7'){
        stage('Build') {
            sh 'test/run.sh'
        }
        stage('Test') {
            echo './gradlew --full-stacktrace --info test'
        }

  }
