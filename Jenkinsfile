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
    stage('Deploy'){
       deploy adapters: [tomcat9(credentialsId: 'tomcat', path: '', url: 'http://3.95.191.75:8080/')], contextPath: 'app1', war: '**/*.war'   
    }
}
