pipeline{
    agent {
        kubernetes{
            label 'java-k8s-gradle-gcloud-helm'
            idleMinutes 5
            yamlFile 'jenkins-agents/k8-build-agent/jenkins-agent.yaml'
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