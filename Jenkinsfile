pipeline{
    
       agent any 
       stages{
           stage ( "checkout code ") {
               steps {
                   sh " git clone https://github.com/cloud-dev-user/demo-app.git "
               }
           }
           stage("Build maven code") {
               steps{
                   sh "cd demo-app && mvn install"
               }
           }
       }
        post { 
        always { 
            cleanWs()
        }
    }
}
