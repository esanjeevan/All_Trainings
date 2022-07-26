pipeline { 
    agent {
         node { label "agent1" }
    }
     parameters { string(name: 'branch_name', defaultValue: 'feature/cicd', description: '') }
    stages {
        stage("Checkout my code ") {
            steps{
                checkout([$class: 'GitSCM', branches: [[name: "*/${branch_name}"]], extensions: [], userRemoteConfigs: [[url: 'https://github.com/cloud-dev-user/demo-app.git']]])
            }
        }
        
         stage(" build my code , CI ") {
            steps {
                sh "mvn package"
            }
        }
    }
}
