pipeline { 
    agent {
         node { label "agent1" }
    }
    stages {
        stage("Checkout my code") {
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/feature/cicd']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/cloud-dev-user/demo-app.git']]])
            }
        }
        stage(" build my code , CI ") {
            steps {
                sh "mvn package"
            }
        }
    }
}
