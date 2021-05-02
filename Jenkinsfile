pipeline {
    agent any
    environment {
        FLUTTER_HOME = "/Users/kayarci/Tool/flutter/bin/flutter.bat"
    }

    stages{
          stage('GIT PULL') {
            steps {
                git branch: "main", url: 'https://github.com/ErrorFourZeroFour/blitzApp.git'
            }
        }
        
         stage ('SH TEST') {
            steps {
                echo "try to create directory"
                sh 'mkdir /Users/kayarci/testdir'
            }
        }
        
         stage ('Flutter Doctor') {
            steps {
                echo "FLUTTER_HOME is: $FLUTTER_HOME"
                sh '${FLUTTER_HOME} flutter doctor -v'
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
