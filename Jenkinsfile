pipeline {
    agent any
    tools {
  dockerTool 'docker'
}

   parameters {
  choice choices: ['git', 'curl'], description: 'Enter package name', name: 'package'
}

    stages {
        stage('Clone'){
            steps {
                 git branch: 'main', url: 'https://github.com/monica261195/docker'

            }
        }
        stage('Build'){
            steps {
                sh '''
                docker build -t my-ubuntu --build-arg PACKAGE="$(params.package)" .
                '''
            }
        }
        
    }
}
