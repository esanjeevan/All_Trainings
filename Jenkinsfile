node{
    parameters { string(name: 'tagname', defaultValue: '', description: ' this is tag given to the Docker image ') }
    stage(" build my code , CI ") {
            sh "mvn deploy &&  cp target/my-app-1.0-SNAPSHOT.jar my-app.jar"
        }
          stage(" Create and push Docker image for my package") {
            sh "sudo docker build -t vishnu11/myapp:${ tagname } .  && sudo docker push vishnu11/myapp:${ tagname }"
        }
        stage(" deploy the docker container") {
                sh "sudo docker run -d --name myapp-${ tagname}  vishnu11/myapp:${ tagname } "
        }  
 }
	  
