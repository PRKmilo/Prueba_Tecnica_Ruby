# README

Requerimientos:

Rails 7.0.4.2

Ruby 3.1.2

postgreslq 12.14

En caso de tener las versiones de arriba ya instaladas:
1)Agrege el comando en su terminal de trabajo para clonar el proyecto git clone https://github.com/malboro-eng/Prueba_Tecnica_Ruby.git

2)Ejecute el comando cd proyecto_prueba y ejecute el comando bundle install 

3)Genere la base de datos con  el comando rails db:create

4)Corra las migraciones con el comando rails db:migrate

5)Levante el servidor con rails server

Despues vaya al localhost 3000 para verificar la aplicacion

Si se cuenta con Docker-compose ejecute:

1)Agrege el comando en su terminal de trabajo para clonar el proyecto git clone https://github.com/malboro-eng/Prueba_Tecnica_Ruby.git

2)Ejecute el comando cd proyecto_prueba 

3)Ejecute el comando docker compose build

4)Ejecute el comando docker compose up

5) Vaya a el localhost 3000 y presione el boton que le genera la base de datos
6)Presione en la misma ventana el boton para correr las migraciones 


MANUAL PARA CORRER TEST

1)ejecute el comando rails db:fixtures:load o si tiene el entorno de desarrollo de docker ingrese a el contenedor por medio del comando docker compose exec web bash y ejecute el comando de rails db:fixtures en la terminal de bash

2)Ejecute el comando rails test
