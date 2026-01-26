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
              
            }
        
        
        }
        stage('Terraform plan') {
            
            steps {
                sh 'terraform plan'
               
            }
        }

        stage('Test') {
            
            steps {
                
                script {
                     if (env.gh_action == "opened") {
                            sh 'terraform validate -json'

                     } 
                 
                  }
                
              
            }
        }
        
        stage('Apply') {
            
            steps {
                
                script {
                     if (env.gh_action == "submitted") {
                              sh 'terraform apply'
                     } 
                 
                  }
                
                
               
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying the application...'
             
            }
        }
    }
}
