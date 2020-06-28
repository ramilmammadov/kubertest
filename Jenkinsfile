pipeline{
    agent {
        kubernetes{
            label 'Jenkinsfile'
            idleMinutes 5
            yamlFile 'jenkins-agents/jenkins-agent.yaml'
            defaultContainer 'kubertest'
        }
    }
    stages{
        stage('Build'){
            steps{
                    sh "mkdir -p /tmp"
                    sh "./gradlew build "
            }
        }
    }
}