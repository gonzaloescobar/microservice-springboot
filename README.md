# Microservice-springboot UNGS

Ejemplo en Spring Boot utilizado para demostración de una api rest con Docker.

En este ejemplo utilizamos un Dockerfile multistage donde se compila el código con maven y se ejecuta la aplicación.

**Pasos para ejecutar la app:**
1) Crear la imagen a partir del Dockerfile

  **docker build -t "ejemplo-docker" .**

2) Ejecutar la imagen creada en el paso 1)

  **docker run -d -p 8080:8080 ejemplo-docker**
  
Debemos poder acceder a la api desde un navegar en la siguiente url http://localhost:8080/greeting

Para pasarle un parámetro hacemos un GET a http://localhost:8080/greeting?name=Gonza

Cualquier consulta o sugerencia enviame un DM por Twitter @GonzaDEscobar o por mail a gonzalo.david.escobar@gmail.com
  
