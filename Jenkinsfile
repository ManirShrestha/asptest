pipeline {
    agent any

    environment {
        dotnet = '"C:\\Program Files\\dotnet\\dotnet.exe"'
    }

    triggers {
        pollSCM 'H * * * *'
    }

    stages {
        stage('Restore packages') {
            steps {
                bat "${dotnet} restore MyWebApp.csproj"
            }
        }
        stage('Clean') {
            steps {
                bat "${dotnet} clean MyWebApp.csproj"
            }
        }
        stage('Build') {
            steps {
                bat "${dotnet} build MyWebApp.csproj --configuration Release"
            }
        }
        stage('Publish') {
            steps {
                bat "${dotnet} publish MyWebApp.csproj --configuration Release"
            }
        }
        stage('DockerBuild') {
            steps {
                bat 'docker build -t mywebapp .'
            }
        }
    }
}
