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

### serverName
> Define el nombre para tu servidor acorde con la app que vas a usar

### port
> Define el puerto de salida de la app que vas a usar

### pathApp
> Define el path de tu proyecto que se va a incluir en el docker
```env
pathApp = './NombreDelRepo'
```
>Ejemplo


## Xdebug
Si vas a usar xdebug te dejo un ejemplo del launch.json en el archivo launch.Example.json
> Solo remplaza nameAppFolder por el nombre de la carpeta del repositorio que clonaste 

## Listo a trabajar.


