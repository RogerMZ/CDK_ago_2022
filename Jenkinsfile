pipeline {
  agent any
  stages {
    stage('Environment') {
      steps {
        sh 'ls -ltr'
        sh 'docker --version'
        sh '''whoami
env'''
        sh 'docker ps'
      }
    }

    stage('Build') {
      steps {
        sh './build.sh'
      }
    }

    stage('Run') {
      steps {
        sh 'bash run.sh'
        sh 'docker logs api-rest'
      }
    }

  }
}