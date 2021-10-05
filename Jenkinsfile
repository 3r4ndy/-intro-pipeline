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
      steps {
        sh 'echo "Paso de test: Production"'
      }
    }

  }
}