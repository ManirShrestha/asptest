pipeline {
    agent any

    environment {
        dotnet = 'C:\\Program Files\\dotnet\\dotnet.exe'
    }

    triggers {
        pollSCM 'H * * * *'
    }

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/ManirShrestha/asptest.git', branch: 'master'
            }
        }

        stage('Restore packages') {
            steps {
                bat 'C:\\Program Files\\dotnet\\dotnet.exe restore MyWebApp.csproj'
            }
        }
        stage('Clean') {
            steps {
                bat 'C:\\Program Files\\dotnet\\dotnet.exe clean MyWebApp.csproj'
            }
        }
        stage('Build') {
            steps {
                bat 'C:\\Program Files\\dotnet\\dotnet.exe build MyWebApp.csproj --configuration Release'
            }
        }
    }
}
