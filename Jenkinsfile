pipeline {
//    agent {
//        kubernetes{
//            label 'kubertest-automated'
//            idleMinutes 5
//            yamlFile 'jenkins-agents/k8-custom-build-agent/jenkins-agent.yaml'
//            defaultContainer 'kubertest-automated'
//        }
//    }
    agent any

    stages {
        stage('Build') {
            steps {
                sh "mkdir -p /tmp"
                sh "./gradlew build"
                sh "mkdir -p /tmp"
                sh "docker build . -t kubertest-automated:10.0"
                sh "docker tag kubertest-automated:10.0 gcr.io/winter-monolith-281508/kubertest-automated:10.0"
                sh "docker push  gcr.io/winter-monolith-281508/kubertest-automated:10.0"
            }

        }
    }
}