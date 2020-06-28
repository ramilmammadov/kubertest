pipeline{
    agent {
        kubernetes{
            label 'kubertest-automated'
            idleMinutes 5
            yamlFile 'jenkins-agents/k8-custom-build-agent/jenkins-agent.yaml'
            defaultContainer 'kubertest-automated'
        }
    }
    stages{
        stage('Build'){
            steps{
                sh "echo Hello World from container"
            }
        }
        stage('Build'){
            steps{
                    sh "mkdir -p /tmp"
                    sh "./gradlew build"
            }
        }
    }
}