pipeline {
    agent any

    triggers {
        GenericTrigger(
            token: 'mytoke', // must match ?token=pr-review in webhook URL
            genericVariables: [
                [key: 'gh_action',     value: '$.action']
               
            ],
            causeString: 'Triggered by PR review webhook',
            printContributedVariables: true, // show env vars in build logs
            printPostContent: true           // dump JSON payload in build logs
        )
    }

    stages {
        stage('Terraform init') {
        
        steps {
                sh 'terraform init'
                // Replace with your actual build commands, e.g.,
                // sh 'mvn clean install'
                // sh 'npm install && npm run build'
            }
        
        
        }
        stage('Terraform plan') {
            
            steps {
                sh 'terraform plan'
                // Replace with your actual build commands, e.g.,
                // sh 'mvn clean install'
                // sh 'npm install && npm run build'
            }
        }

        stage('Test') {
            
            steps {
                
                script {
                     if (env.gh_action == "opened") {
                            sh 'terraform validate -json'

                     } 
                 
                  }
                
                // Replace with your actual test commands, e.g.,
                // sh 'mvn test'
                // sh 'npm test'
                // junit '**/target/surefire-reports/*.xml' // For publishing JUnit test results
            }
        }
        
        stage('Apply') {
            
            steps {
                
                script {
                     if (env.gh_action == "submitted") {
                              sh 'terraform apply'
                     } 
                 
                  }
                
                
                // Replace with your actual test commands, e.g.,
                // sh 'mvn test'
                // sh 'npm test'
                // junit '**/target/surefire-reports/*.xml' // For publishing JUnit test results
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying the application...'
                // Replace with your actual deployment commands, e.g.,
                // sh 'scp target/my-app.jar user@remote-server:/opt/apps/'
            }
        }
    }
}
