pipeline {
   agent any
   
//environment {
  //pom_loc = "${workspace}/wel"
//}

    stages {
        stage('cloning') {
            steps {
                git branch: 'main', changelog: false, credentialsId: 'jk-key', poll: false, url: 'https://jk-047@bitbucket.org/learning-001/mango-repo.git'
            }
        }
        
        stage('build') {
            steps {
         // dir (pom_loc)
           //    {
               sh "mvn package"
             //  }
            }
        }
        
//       stage('deploy on Tomcat') {
//            steps {
//               deploy adapters: [tomcat9(credentialsId: 'cd512e30-2fae-4961-9f37-92803adcff48', path: '', url: 'http://16.16.196.6:8080/')], contextPath: 'apple-repo', war: '**/*.war'
//            }
//        }
        
    }

//hello
    
 post {
  always {
  emailext body: " Build Status   : ${currentBuild.currentResult} \n Job     : ${env.JOB_NAME} \n Build Number: ${env.BUILD_NUMBER}\n More info at: ${env.BUILD_URL} ", subject: "Jenkins Build Job: ${env.JOB_NAME}  Status: ${currentBuild.currentResult}", to: 'amrutha.chembuli@gmail.com'
  }
}

}

