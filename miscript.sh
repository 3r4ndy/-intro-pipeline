#!/bin/sh
# A simple script with a function...

add_a_user()
{
  USER=$1
  PASSWORD=$2
  shift; shift;
  #Having shifted twice , the rest is now comments...
  COMMENTS=$@
  echo "Adding user $USER ......"
  echo useradd -c "$COMMENTS" $USER
  echo passwd $USER $PASSWORD
  echo "Added user $USER ($COMMENTS) with pass $PASSWORD"
}
###
# cuerpo principal del script comienza aqui 
echo "comienzo del script............"
add_a_user bob sanchez Bob el constructor
add_a_user brandon badpassword brandon tiene sueño 
add_a_user erika eperalta solo un ejemplo
echo "el final de nuestro script......"
