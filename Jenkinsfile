node(){
        stage('checkout'){
           checkout scm
        }
        stage('Build') {
            withMaven() {
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
