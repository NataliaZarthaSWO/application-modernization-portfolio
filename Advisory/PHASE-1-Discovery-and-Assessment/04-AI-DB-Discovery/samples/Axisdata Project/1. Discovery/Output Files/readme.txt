Estos scripts deben ejecutarse en la instancia de la base de datos con un usuario con privilegios de DBA, o con un usuario de SYS/SYSTEM ,debido a que necesita acceso al diccionario de Oracle para obtener información sobre referencias y dependencias de los objetos. Estos scripts generan un archivo con los resultados de las consultas. Siéntase libre de modificar las rutas de spooling de acuerdo con la ubicación de los scripts que se van a ejecutar. Estos son los esquemas de cada script (y el orden de ejecución): 

1. Assessment.sql: recopila información de paisaje de la base de datos relacionada con la cantidad de objetos, la versión de la base de datos y el propietario del esquema.
2. Assessment_header.sql: recopila información sobre el tipo, el nombre y el tamaño del objeto (líneas de código). Este script solicita información sobre el propietario de la base de datos
3. Assessment_details.sql: recopila información sobre referencias y dependencias de objetos. Este script solicita información sobre el propietario de la base de datos

Dado que no accedemos directamente a la base de datos, es posible que haya que hacer algún ajuste de los scripts para que se ejecuten correctamente. En ese caso, no dude en ponerse en contacto con nosotros para realizar los ajustes necesarios.

Aunque estos scripts solo acceden a los metadatos, no se recomienda ejecutarlos en entornos productivos.

Una vez que se ejecutan los scripts, por favor enviar el spool que genera cada uno.