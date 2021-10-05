#!/bin/sh
#A simple script with a function...

add_a_user()
{
  USER=$1
  PASSWORD=$2
  shift;shift;
  #Having shifted twice, the rest is now coments...
  COMMENTS=$0
  echo"Adding user $USER......."
  echo useradd -c "$COMMENTS" $USER
  echo passwd $USER $PASSWORD
  echo"Added user $USER($COMMENTS) with pass $PASSWORD"
}

#Cuerpo principal del scritp comienza aqui
echo "Comienzo del cript..........."
add_a_user bob sanchez bob el constructor
add_a_user brandon incorrecta brandon tiene sueño
add_a_user erika peraltaC Lorem ipsum dolor sit amet
echo"el final de nuestro script................"
