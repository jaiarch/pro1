node('node'){
    stage('Checkout'){
        
    }
    stage('Compile'){
      sh 'mvn clean compile'  
    }
    stage('Test'){
      sh 'mvn test'  
    }
    stage('Code Quality Analisys'){
      
    }
    stage('Package'){
      sh 'mvn package install -D=${BUILD_NUMBER}'    
    }
    stage('Publish Artifacts'){
        
    }
    stage('Docker Build and Push'){
       sh '''aws ecr get-login-password --region us-east-1 | sudo docker login --username AWS --password-stdin 839354989419.dkr.ecr.us-east-1.amazonaws.com

             sudo docker build -t 839354989419.dkr.ecr.us-east-1.amazonaws.com/jaimage:${BUILD_NUMBER} .
             sudo docker push 839354989419.dkr.ecr.us-east-1.amazonaws.com/jaimage:${BUILD_NUMBER}'''
    }
}
