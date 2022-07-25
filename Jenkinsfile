pipeline {
  agent {
    node {
      label 'agent1'
    }

  }
  stages {
    stage('CI Stage') {
      steps {
        sh 'mvn install'
      }
    }

    stage('CD stage') {
      steps {
        sh 'echo " This stage will do the deployment" '
      }
    }

  }
}