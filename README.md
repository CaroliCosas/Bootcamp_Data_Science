
## ENTORNO

### MYSQL

Usar el MySQL Installer: https://dev.mysql.com/downloads/installer/

Esto permite instalar:

* MySQL Community Server: sistema gestor de bases de datos MySQL
* MySQL Workbench: Herramienta GUI visual para entrar a MySQL


Esto permite instalar MySQL 8.4.0

Instalación: 

https://certidevs.com/tutorial-sql-mysql-instalacion

* Seleccionar opción de instalación: Full
* Type and networking lo dejamos tal cual en el puerto 3306
* Authentication method lo dejamos tal cual está
* Account and Roles: le escribimos una contraseña para el usuario root, por ejemplo: admin. No es necesario crear ningún otro usuario.
* en el resto de opciones le damos Execute y hacia delante

Una vez instalado buscamos en nuestro ordenador la aplicación: MySQL Workbench.

## MYSQL WORKBENCH

Programa de interfaz de usuario para conectarse a MySQL Server

* Pulsar en Schemas
* Aparecerán las bases de datos: sys, sakila, world

Sakila:

* Desplegar la base de datos sakila
* Desplegar sus tablas
* Desplegar una tabla y ver sus columnas
* Clic derecho en una tabla y hacer una consulta SELECT

Para ver modelo ER: 

* Pulsar en el icono de la casa de arriba a la izquierda 
* en el panel lateral izquierdo hay un icono de 3 tablas unidas por líneas, podemos pulsar 
* Se mostrarán los diagramas existentes, estará sakila y se puede pulsar y abrir


### PYTHON

python -m venv .mod4-sql

* Windows powershell: .mod4-sql\Scripts\activate
* Bash: source .mod4-sql/Scripts/activate

pip install -r requirements.txt