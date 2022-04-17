pipeline{
    
       agent any 
       parameters { string(name: 'ENVIRONMENT', defaultValue: '', description: '')
                    choice(name: 'CHOICES', choices: ['one', 'two', 'three'], description: '') }
       stages{
           stage ( "checkout code ") {
               steps {
                   sh " git clone https://github.com/cloud-dev-user/demo-app.git "
               }
           }
           stage("Build maven code") {
               steps{
                   sh "echo $ENVIRONMENT $CHOICES"
               }
           }
       }
        post { 
        always { 
            cleanWs()
        }
    }
}
