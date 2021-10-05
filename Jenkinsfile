pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'echo "Un paso sencillo de una linea"'
        sh '''
         echo "Pasos Multilinea"
         cd /tmp
         ls -la
         '''
      }
    }

    stage('test: Integration & Quality') {
      steps {
        sh 'echo "Paso de test: Integration & Quality"'
      }
    }

    stage('test: Functional') {
      steps {
        sh 'echo "Paso de test: Functional"'
      }
    }

    stage('Aprobacion') {
      steps {
        sh 'echo "Paso de test: Aprobacion"'
      }
    }

    stage('Deploy: Production') {
      input {
        message 'Presiona OK para continuar'
        submitter 'user1,user2'
        parameters {
          string(name: 'username', defaultValue: 'user', description: 'Nombre de usuario que selecciona OK')
        }
      }
      steps {
        sh 'echo "Paso de test: Production"'
        echo "User: ${username} dijo que OK."
      }
    }

  }
  environment {
    OUT_PATH = './tmp'
  }
}