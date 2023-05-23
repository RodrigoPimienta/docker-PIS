## Setup

### 1. Crea tu propio .env.
```
  copy env-example .env
```

### 2. Clona tu repositorio dentro de Docker-PIS.
```
  git clone https://github.com/userName/repository.git
```

### 3. En tu terminal ejecuta el siguente comando dentro de docker-PIS.
```
  docker-compose up --build
```
> La siguiente vez que quieras correr el docker no es necesario agregar el '--build' en el comando.



## Environment file
> Asigna valor a tus variables de ambiente

### dockerImage 
> Seleciona la imagen acorde con la app que vas a usar
* App Nomina: francarmona/docker-ubuntu16-apache2-php7-mssql_client

### serverName
> Define el nombre para tu servidor acorde con la app que vas a usar

### port
> Define el puerto de salida de la app que vas a usar

## Listo a trabajar.


