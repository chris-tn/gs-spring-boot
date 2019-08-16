node ('jnlp-agent-maven'){
        stage('Build') {

            sh './test/run.sh'
        }

        stage('Test') {
            echo './gradlew --full-stacktrace --info test'
        }

  }
