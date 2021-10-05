pipeline {
  agent any
  stages {
    stage('Corriendo en paralelo') {
      parallel {
        stage('a') {
          steps {
            echo 'Test en Linux'
          }
        }

        stage('b') {
          steps {
            echo 'Test en Linux'
          }
        }

      }
    }

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
        sh 'chmod 777 ./miscript.sh'
        sh './miscript.sh'
      }
    }

    stage('test: Functional') {
      when {
        branch 'test'
      }
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
  post {
    always {
      echo 'El pipeline se ejecuto Exitosamente'
    }

    failure {
      mail(to: 'brandon.rojas3159@gmail.com', subject: 'Error en el pipeline... que dios nos ampare.', body: 'Error de capa 8')
      echo 'Ocurrió un Error en el pipeline, que dios nos ampare'
    }

    aborted {
      echo 'No termino de corre el pipeline, fue forzado a terminar'
    }

  }
  triggers {
    cron('0 */1 * * 1-5')
  }
}