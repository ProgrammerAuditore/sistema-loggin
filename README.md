# Sistema de Loggin
Este repositorio contiene un proyecto con acciones/funciones de registrarse y entrar <br>
usando tu cuenta de Facebook, Google y GitHub.
Fue desarrollado usando NodeJS + express + morgan + nodemon + express-handlebars <br>

# Requisitos funcionales
Para hacer funcionar la aplicación se requiere tener instalado, como requisito lo siguiente:
* Requisitos minimos
  * NodeJS +14.x.x (o superior)
  * npm
  * Browser (Google Chrome, Firefox, etc.)
* Requisitos adicionales
  * docker
  * docker-compose
  * vagrant
  * MongoDB

# Configuración App | Sitema de Loggin
Es necesario crear un archivo `.env` del proyecto de backend dentro del path **./app**, opcionalmente puede hacer una copia del archivo `.env.test` con el nombre de **.env** que incluyen variables de entorno predeterminado o por default para funcionar con **docker-compose** y **vagrant**. <br> 
Finalmente las variables de entorno son: 
### Variables de entorno para App | Sitema de Loggin
*  **API_PORT** *(Requerido)* Puerto para API mascota por default es `3010`

## Correr aplicación de forma independiente (Usando npm)
#### Configuración previa
Antes de ejecutar los proyectos Frontend (App Mascotas) y Backend (API Mascota) es necesario configurar el archivo `.env` en la ruta **./app*, la configuración necesario es la siguiente:
```text
[..]
# Sistema de Loggin
APP_PORT=3010
[..]
```

#### Instalar dependencias
Es necesario instalar dependencias sig. comando dentro del path **./app/**
```shell
    npm install
```

#### Ejecutar App | Sitema de Loggin
Es necesario ejecutar el proyecto usando el sig. comando dentro del path **./app/**
```shell
    npm run dev
```

## Correr aplicación de forma automatizada (Usando docker-compose)
Es necesario ejecutar el siguiente comando desde donde se encuetra el archivo **docker-compose.yml** 

#### Configuración previa
Antes de ejecutar los proyectos Frontend (App Mascotas) y Backend (API Mascota) es necesario configurar el archivo `.env` en la ruta **./app*, la configuración necesario es la siguiente:
```text
[..]
# Sistema de Loggin
APP_PORT=3010
[..]
```

##### Esto construye y corre la aplicación en segundo plano
```shell
   docker-compose build && docker-compose up -d
```

##### Esto detiene y elimina la aplicación
```shell
   docker-compose stop -f && docker-compose rm -f
```

## Correr aplicación de forma automatizada (Usando vagrant)
#### **Nota**
Es necesario ejecutar el siguiente comando desde la directorio/carpeta raíz donde se encuetra el archivo **docker-compose.yml** 

Cabe mencionar que el archivo **docker-compose.yml** es creado y configurado especificamente para ejecutarse dentro de vagrant.
Así tambien el comando "vagrant up" o "vagrant reload", levanta los servicios definidas en el archivo **docker-compose.yml** (Por defecto).

#### Configuración previa
Antes de ejecutar los proyectos Frontend (App Mascotas) y Backend (API Mascota) es necesario configurar el archivo `.env` en la ruta **./app*, la configuración necesario es la siguiente:
```text
[..]
# Sistema de Loggin
APP_PORT=3010
[..]
```

##### Crear maquina virtual
Este comando crea una maquina virtual usando **'vagrant'** para correr *docker* y *docker-compose* dentro de ella. <br>
Por tal motivo, este comando se debe ejecutar una sola vez. 
```shell
   vagrant up 
```

##### Construir y levantar el proyecto
Este comando reinicia la maquina virtual usando **'vagrant'**, asi también ejecuta la provision *run-workspace* definida en el archivo *Vagrantfile*. <br>
+ *run-workspace* : Suspende, Elimina, Contruye y Levanta los servicios de *__docker-compose__* en el mismo orden. <br>

Por tal motivo, este comando se puede ejecutar las veces que sean necesarias. 

```shell
   vagrant reload 
```
##### Ejecutar los contenedor invidualmente y manualmente

Este comando levanta en segundo plano el servicio *__service_api__*
```shell
   doc run -p 3010:3010 -v /home/max98/workspace/app/node_modules -t service_app
```
