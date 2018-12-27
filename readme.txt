Lambda layer diseñado para incluir la gema 'pg' en funciones lambda-ruby.

Bajo el directorio /ruby se incluyen todos los archivos generados luego de ejecutar 'bundle install --path=.'.
Bajo el directorio /lib se incluyen las dependencias de la gema. Estos archivos los extraje de mi equipo.

Para crear el layer en aws lambda es necesario crear el paquete (.zip) con el siguiente comando 'zip -r pg.zip ./ruby/ ./lib/'.

Este layer se construyó para el runtime de ruby 2.5.0 utilizando la versión 1.1.3 de la gema 'pg' y se espera ser utilizado con Postgres 11.

Para hacer uso del método new_connection es necesario pasar como params. un hash como el siguiente:
  {'host' => host, 'database' => database, 'username' => username, 'password' => password}

Importante: En la configuración de la función del lambda es necesario sobrescribir la variable de entorno GEM_PATH por '/opt/ruby/2.5.0'.
Ver más en: https://medium.com/devopslinks/how-to-use-aws-lambda-layers-f4fe6624aff1

