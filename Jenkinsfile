pipeline { 
    agent {
         node { label "agent1" }
    }
      stages {
         stage(" build my code , CI ") {
            steps {
                sh "mvn deploy"
            }
        }
    }
}
