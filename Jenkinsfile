pipeline {
    agent any
    environment {
        PATH = "/Users/kayarci/Tool/flutter/bin"
    }

    stages{
          stage('GIT PULL') {
            steps {
                git branch: "main", url: 'https://github.com/ErrorFourZeroFour/blitzApp.git'
            }
        }
        
         stage ('Flutter Doctor') {
            steps {
                echo "PATH is: $PATH"
                sh '${PATH} flutter doctor -v'
            }
        }
        
        
        stage('Develop'){
            steps{
                sh "flutter build web --dev"
            }
        }
       
        stage('Flutter Build Web') {
            steps {
                sh "flutter build web --release"
            }
        }

       stage('Cleanup') {
            steps {
                sh "flutter clean"
            }
        }
    }
}
