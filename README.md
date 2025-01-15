
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
* Account and Roles: le escribimos una contraseña para el usuario root, por ejemplo: admin (yo, Carolina, tenía la app instalada y tebnnía la contrasea 1234abcd). No es necesario crear ningún otro usuario.
* en el resto de opciones le damos Execute y hacia delante

Una vez instalado buscamos en nuestro ordenador la aplicación: MySQL Workbench.

## MYSQL WORKBENCH

Programa de interfaz de usuario para conectarse a MySQL Server

* Pulsar en Schemas (por defecto viene mostrando administración)
* Aparecerán las bases de datos: sys, sakila, world

Sakila:

* Desplegar la base de datos sakila
* Desplegar sus tablas
* Desplegar una tabla y ver sus columnas
* Clic derecho en una tabla y hacer una consulta SELECT (equivale a hacer un select * tablas)

Para ver modelo ER: 

* Pulsar en el icono de la casa de arriba a la izquierda 
* en el panel lateral izquierdo hay un icono de 3 tablas unidas por líneas, podemos pulsar 
* Se mostrarán los diagramas existentes, estará sakila y se puede pulsar y abrir


### PYTHON

python -m venv .mod4-sql # para crear un entorno virtual limpio desde cero

* Windows powershell: .mod4-sql\Scripts\activate
* Bash: source .mod4-sql/Scripts/activate

pip install -r requirements.txt

## PARA TRABAJAR SQL DESDE PYTHON

* No es necesario tener MySQL Workbench porque es un programa de interfaz de usuario para ver las bases de datos, no es el gestor de bases de datos en sí.

* Lo que sí necesitamos tener en ejecución es el MySQL Community Server el cuál está instalado como servicio y se ejecuta en el arranque. Se puede ver en el administrador de tareas en Servicios si buscamos MySQL

Alternativas a MySQL Workbench: DBeaver (basada en eclipse), JetBrains DataGrip (de pago), Extensiones de visual studio code.


## TIPOS DE SENTENCIAS SQL

* Data Definition Language (DDL): sentencias para crear bases de datos, crear tablas, modificar tablas, borrar tablas, borrar bases de datos. Ejemplo:
    * CREATE SCHEMA
    * CREATE TABLE
    * ALTER TABLE
    * DROP TABLE
    * SHOW TABLES
    * DROP DATABASE
    * SHOW DATABASES

* Data Manipulation Language (DML): sentencias para crear y manipular datos dentro de las bases de datos:
    * SELECT
    * INSERT
    * UPDATE
    * DELETE


## CREAR UNA BASE DE DATOS:

* opción 1: desde mysql workbench, pulsar clic derecho en Schemas, y Create Schema, Pulsar Apply Changes
* opción 2: desde python ejecutar el código: CREATE SCHEMA .... 

## CREAR TABLAS

* opción 1: desde mysql workbench abrimos una base de datos, y donde pone Tables, pulsar clic derecho y Create table, esto abre un menú en el que permite agregar columnas y crear la tabla.
* opción 2: desde python ejecutar código: CREATE TABLE ...