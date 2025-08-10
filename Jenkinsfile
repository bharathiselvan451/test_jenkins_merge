pipeline {
    agent any // Specifies that the pipeline can run on any available agent

    stages {
        stage('Terraform plan') {
            steps {
                sh 'terraform init'
                // Replace with your actual build commands, e.g.,
                // sh 'mvn clean install'
                // sh 'npm install && npm run build'
            }
            steps {
                sh 'terraform plan'
                // Replace with your actual build commands, e.g.,
                // sh 'mvn clean install'
                // sh 'npm install && npm run build'
            }
        }

        stage('Test') {
            steps {
                sh 'terraform validate -json'
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
