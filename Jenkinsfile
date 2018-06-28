pipeline {
  agent any
  stages {
    stage('Initial build') {
      steps {
        echo 'Building!'
        sh 'bash deploy.sh'
      }
    }
  }
}
