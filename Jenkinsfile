pipeline{
    agent {
        kubernetes{
            label 'custom-agent'
            idleMinutes 5
            yamlFile 'jenkins-agents/k8-custom-build-agent/jenkins-agent.yaml'
            defaultContainer 'java-k8s-gradle-gcloud-helm'
        }
    }
    stages{
        stage('Build'){
            steps{
                    sh "mkdir -p /tmp"
                    sh "./gradlew build"
            }
        }
    }
}