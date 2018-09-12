node {
   def app
   stage('Preparation') { // for display purposes
      // Get some code from a GitHub repository
      checkout scm
   }
 stage('Build') {
    docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app = docker.build("exolain/hellonode:latest")
            app.push("latest")
        }
 }
   stage('analyze') {
        
                sh 'echo "docker.io/exolain/hellonode:latest `pwd`/Dockerfile" > anchore_images'
                anchore name: 'anchore_images'
            
        }
       
}
