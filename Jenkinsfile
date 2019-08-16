node{
        stage('Build') {

            sh 'sudo yum install -y maven'
        }

        stage('Test') {
            echo './gradlew --full-stacktrace --info test'
        }

  }
