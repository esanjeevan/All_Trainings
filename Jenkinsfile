pipeline{
    
       agent any 
       parameters { string(name: 'ENVIRONMENT', defaultValue: '', description: '') }
       stages{
           stage ( "checkout code ") {
               steps {
                   sh " git clone https://github.com/cloud-dev-user/demo-app.git "
               }
           }
           stage("Build maven code") {
               steps{
                   sh "echo $ENVIRONMENT"
               }
           }
       }
        post { 
        always { 
            cleanWs()
        }
    }
}
