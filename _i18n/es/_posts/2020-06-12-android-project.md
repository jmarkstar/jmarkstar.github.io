---
layout: default
title: Gradle para desarrolladores Android
description: Este articulo es el resultado de una pequena lectura que hice sobre Gradle y me ayudo a entender mas de como y porque existen algunos archivos gradle en el proyecto de Android Studio.
cover: cover.jpg
date: 2020-06-12 02:39:00
categories: Android
tags: [Gradle, Android]
---

## Un poquito de Gradle

Gradle es una herramienta open source que automatiza la construction de un proyecto; en otras palabras compila tu codigo fuente, lo empaqueta en un ejecutable(`*.jar`, `*.apk`, etc) y finalmente corre las pruebas unitarias con solo ejecutar un comando que podria ser `./gradlew clean build` por ejemplo. 

Lo bueno de gradle es que puedes crear `plugins` y tus propios `tasks` y anadirlos a la ejecucion o correrlos individualmente.

## Gradle es uniproyecto y multiproyectos

Gradle puede hacer build(ejecutar las tareas) de varios proyecto con un solo comando. Basicamente consiste en un `proyecto root` y varios `subproyectos`; estos subproyectos no necesariamente podrian estar dentro de la carpeta del proyecto `root`.

Primero buscare explicar la estructura de un `gradle single project`. En otras palabras, un proyecto gradle sin subproyectos. Para esto me apoyare de `Intellij IDEA CE` y create un proyecto gradle tal cual la image de abajo, luego de ese paso es darle un nombre al proyecto.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/gradle-android-project/gradle-singleproject-1.png" width="250" title="Estructura de Proyecto Maven" alt="Estructura de Proyecto Gradle"></p>



Gradle tiene un ciclo de vida que consta de 3 fases; iniciacion, configuracion y ejecucion, es aqui a donde quiero llegar.

* Iniciacion es donde puedes anadir o cambiar el valor de las propiedades del ambiente gradle en tu proyecto y asignar cual de los proyectos correran en la ejecucion. 




### ¿Que es Maven?

Si ya has escuchado un poco de maven antes de que entres a leer este artículo, talvez hayas oído que Maven es una herramienta usada para construir artefactos o binarios desplegables desde el código fuente, una herramienta enfocafa a la compilación, empaquetamiento, testeo y distribución de artefactos. Pues permiteme explicarte que Maven es mas que eso, claro, también hace lo que acabamos de mensionar. En este artículo analizaremos Maven hasta el punto que puedas construir tu propio proyecto y saber que esta ocurriendo por debajo de la mesa.

Bien, en pocas palabras, Maven es una herramienta de administración de proyectos que abarca muchas cosas que nos falicitaría la vida como desarrollador si los sabemos manejar con criterio, entre ellas tenemos:

* Un modelo de objeto de proyecto, mas conocido como archivo POM.
* Un conjunto de estandares.
* Un ciclo de vida de proyecto.
* Un sistema de administración de dependencias y.
* Lógica para ejecutar Plugins en una fase definida del ciclo de vida del proyecto.

Vamos a ir explicando poco a poco cada caracteristica de maven desde lo más general a lo más especifico, y vamos a comenzar con

#### La estructura de proyecto por defecto

Si ya tenemos experiencia trabajando con java y hemos trabajado con distintos IDEs, de seguro que nos hemos dado cuenta que cada IDE tiene su propia forma de organizar las carpetas de un proyecto y que entre ellas son incompatibles. Es decir, si tienes un proyecto hecho con Netbeans y lo quieres abrir con eclipse, pues te digo que vas a tener problemas porque las estructuras de carpetas son diferentes.

Por convención, Maven tiene su propia forma de organizar las carpetas de un proyecto, y por defecto asume que dicho proyecto tiene dicho orden. Esto ayuda a que un proyecto pueda ser abierto por cualquier IDE que soporte maven, dichas carpetas son:

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/starting-with-maven/maven_structure_folder_es.png" width="200" title="Estructura de Proyecto Maven" alt="Estructura de Proyecto Maven"></p>

* **{NombreProyecto}**/src/main/java es donde almacenaremos todos los archivos **`*.java`** que vamos a crear para nuestro proyecto.
* **{NombreProyecto}**/src/main/resources, en este, almacenaremos otros tipos de archivos que no son **`*.java`** y que estan relacionados a nuestro proyecto. Por ejemplo los archivos **`*.properties`** o **`*.xml`**.
* **{NombreProyecto}**/src/test/, este es donde almacenaremos todos los archivos relacionados a las pruebas de nuestro proyecto. Podriamos crear las carpetas **java** y **resources** dentro de ella también y asi tenerlos mas ordenado.
* **{NombreProyecto}**/src/target, y para terminar, este es donde se guardan todos los archivos generados despues de la compilación. Por ejemplo los bytecodes, el ejecutable **`*.jar`**, **`*.war`** o **`*.ear`** dependiendo del caso, además reportes y archivos de documentación.

Entonces, podríamos concluir que Maven usa una estructura estándar de proyecto que nos hace independiente de los IDEs, ya que podemos abrir nuestro proyecto Maven en nuestro IDE favorito sin problemas y ejecutarlo mediante

#### Una Interface Común

Maven provee una serie de comandos estándar, sea cual sea el tipo de proyecto en el que se esté usando. Si navegamos por internet y encontramos algún proyecto creado con maven, por ejemplo en GitHub, podríamos descargarlo y asumir que ese proyecto puede ser ejecutado con el comando **mvn install** sin mucha molestia.

Este es una de las cualidades mas sencillas y poderosas de maven que han hecho que sea tan popular y dificil de reemplazar entre los desarrolladores java además de la

#### Reutilización universal de lógica de construcción mediante plugins

Cuando descargamos Maven desde la [pagina oficial](https://maven.apache.org/download.cgi) notaremos que no pesa mucho, es debido a que maven funciona por medio de **plugins**(complementos en español) y cuando maven es recién descargado, solo tiene los plugins para la construcción y reporte de errores en su interior.

Los plugins contienen lógica que le añade nuevos comportamientos a maven para la construcción de un proyecto. Maven tiene plugins para todo, desde la compilación de código java, generación de reportes y despliegues a un servidor de aplicaciónes, por ejemplo **Glassfish** o **Wildfly**. Los plugins son centralmente mantenidos en un repositorio remoto y universalmente compartidos. Esto quiere decir que si actualmente estas usando algun plugin, por ejemplo uno para desplegar los archivos **`*.war`** en **Glassfish** y en el futuro este plugin tiene cambios, mejoras y/o nuevas versiones. Estos cambios pueden ser facilmente actualizados en el archivo **pom.xml** que es el

#### Modelo conceptual de un Proyecto

Cuando vamos a trabajar con Maven, no solo vamos a compilar codigo fuente a bytecode. Sino que nosotros desarrollaremos una descripción de un proyecto de software y asignaremos un conjunto unico de coordenadas para cada proyecto. Describiremos los atributos del proyecto como por ejemplo acerca de su licencia, quienes son sus desarrolladores y contribuidores, de que otros proyectos depende y etc. Toda esta información se colocará en el archivo **pom.xml** que es la columna vertebral de un proyecto maven.

Para llevar la teoría y la práctica conjuntamente primero

### Instalemos Maven en una Mac OS X

Vamos a instalar Maven en 4 sencillos pasos, primero

#### Verificaremos si tenemos instalado Java

Maven 3 requiere Java 7 ó mayor. Podemos verificar que versión de java tenemos instalado con el comando **java -version**.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/starting-with-maven/java_verification.png" width="500" title="Verificación de la instalación de Java" alt="Verificación de la instalación de Java"></p>

#### Descargaremos Maven

Ahora, vamos a descargar Maven desde la [pagina oficial](https://maven.apache.org/download.cgi). Asegurate de que sea la ultima versión.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/starting-with-maven/download_maven.png" width="450" title="Descargando Maven" alt="Descargando Maven"></p>

####  Configuraremos Maven en nuestra Mac OS X

Despues de descargar Maven, lo descomprimimos y lo movemos a la dirección de nuestra preferencia. yo lo voy a poner en **/usr/local/{apache-maven-3.3.9}**.

Para poder usar los comandos de maven en nuestra consola, vamos agregar a maven como variable de entorno de la siguiente manera:

* Primero, abrimos el archivo **bash_profile** donde indicaremos la ruta de maven con el comando **sudo nano ~/.bash_profile**.
* Agregamos la ruta de la carpeta **bin** de maven en dicho archivo.

  <p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/starting-with-maven/maven_environment_variable.png" width="450" title="Configurando variable de entorno" alt="Configurando variable de entorno"></p>

* Presionamos **Ctl+X** para salir, **Y** para guardar los cambios y **enter** para terminar.
* Finalmente, ejecutamos los cambios en el archivo **bash_profile** con el comando **source ~/.bash_profile**.

#### Verificaremos nuestra instalación Maven

Para comprobar que maven haya sido instalado correctamente ejecutamos el comando **mvn -v**.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/starting-with-maven/maven_verification.png" width="450" title="Verificación de instalación" alt="Verificación de instalación"></p>

Ahora ya estamos listos para crear nuestro primer proyecto maven y continuar explicando algunos conceptos mas de maven, vamos a

### Crear un proyecto java simple

Bien, para generar nuevos proyectos maven vamos a usar un plugin llamado **archetype**, este plugin nos permite crear un proyecto Maven desde una plantilla existente. En este caso, la plantilla para crear una aplicación java se llama **maven-archetype-quickstart**.

Ejecutaremos el comando **mvn archetype:generate** para darle vida al proyecto, antes se usaba el comando **mvn archetype:create** pero ahora esta **deprecado**.

Síntaxis:

```
mvn archetype:generate
-DgroupId={el Id de grupo de la compañia}
-DartifactId={el Id de artefacto de nuestro proyecto}
-Dpackage={paquete de nuestro proyecto}
-DarchetypeArtifactId={plantilla de proyecto}
-Dversion={versión de inicio de nuestro proyecto}
```
Como se observa, el plugin **archetype** solicita unos parametros que vamos a describir ahora.

* **groupId** es el identificador de un equipo, compañia, organización. La convención para este identificador es el nombre de dominio invertido. Por ejemplo, mi dominio es **jmarkstar.com**, entonces el groupId de mi proyecto sería **com.jmarkstar**.
* **artifactId** es el identificador que representa un proyecto bajo tu **groupId**. Normalmente es el nombre del proyecto que debe ser único dentro del dominio del **groupId**, por ejemplo **myproject**.  
* **version** es el identificador de una liberación especifica del proyecto, en caso de que aún el proyecto este en desarrollo podríamos marcar la versión como un **SNAPSHOT**, por ejemplo 1.0.-SNAPSHOT.

Estos datos insertados en el comando figuraran en el archivo **pom.xml**.

Finalmente el codigo a ejecutar sería:

**mvn archetype:generate -DgroupId=com.jmarkstar -DartifactId=myproject -Dpackage=com.jmarkstar.myproject -DarchetypeArtifactId=maven-archetype-quickstart -Dversion=1.0.SNAPSHOT**

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/starting-with-maven/maven_generate_project.png" width="750" title="Generación de un Proyecto" alt="Generación de un Proyecto"></p>

Esta es la jerarquía de carpetas y archivos que el plugin **archetype** ha generado.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/starting-with-maven/maven_simple_project.png" width="300" title="Nuevo Proyecto" alt="Nuevo Proyecto"></p>

Como ya hemos revisado la estructura estándar de un proyecto de maven, vamos a pasar defrente a ver el archivo **pom.xml** que **archetype** ha generado.

```xml
<project xmlns="http://maven.apache.org/POM/4.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
  <modelVersion>4.0.0</modelVersion>

  <!-- Identificador de la compañia -->
  <groupId>com.jmarkstar</groupId>

  <!-- Identificador del proyecto -->
  <artifactId>myproject</artifactId>

  <!-- Tipo de proyecto: jar, war  -->
  <packaging>jar</packaging>

  <!-- Versión del proyecto -->
  <version>1.0-SNAPSHOT</version>

  <!-- Nombre del proyecto -->
  <name>MyProject</name>

  <!-- URL donde se encuentra el proyecto publicado -->
  <url>http://jmarkstar.com</url>

  <!-- Contiene la lista de librerías que nuestro proyecto necesita -->
  <dependencies>

    <!-- Una librería -->
    <dependency>
      <groupId>junit</groupId>
      <artifactId>junit</artifactId>
      <version>3.8.1</version>
      <scope>test</scope>
    </dependency>

  </dependencies>

</project>
```
Con esta pequeña introducción a **pom.xml** donde hemos descrito algunos de sus atributos vamos a

#### Modificar el proyecto generado

**archetype** además ha generado nuestros paquetes y una clase **App.java** en la carpera **src/java**, como queremos probar las cualidades de maven vamos a modificar esta clase y añadir algunas clases nuevas para nuestro ejemplo en la carpeta **src/main/java/com/jmarkstar/myproject**. Vamos a comenzar creando clase modelo **Cliente**.

```java
package com.jmarkstar.myproject;

/** Model Class Client
 */
public class Client {

	private Integer id;
	private String name;
	private String lastName;
	private String address;
	private Integer age;

    public Client(Integer id, String name, String lastName,
    	String address, Integer age){
    	this.id = id;
    	this.name= name;
    	this.lastName = lastName;
    	this.address = address;
    	this.age = age;
    }

    public Integer getId(){
    	return id;
    }

    public String getName(){
    	return name;
    }

    public String getLastName(){
    	return lastName;
    }

    public String getAddress(){
    	return address;
    }

    public Integer getAge(){
    	return age;
    }
}
```
Luego, vamos a crear nuestra clase **ClientService.java**, este nos proporcionará una serie de funcionalidades para el modelo **Cliente**.

```java
package com.jmarkstar.myproject;

import java.util.List;
import java.util.ArrayList;

/** Service class for Client Model.
 */
public class ClientService {

	private List<Client> clientList;

	public ClientService(){
		clientList = new ArrayList<Client>();
	}

	public void addNewClient(Client client){
		clientList.add(client);
	}

	public void deleteClient(Client client){
		clientList.remove(client);
	}

	public List<Client> getAll(){
		return clientList;
	}

	public Integer count(){
		return clientList.size();
	}
}
```
Por ultimo, modificamos la clase **App.java**.

```java
package com.jmarkstar.myproject;

/**
 * Main Class
 */
public class App
{
    public static void main( String[] args )
    {
    	ClientService clientService = new ClientService();

        Client client1 = new Client(1, "Juana", "Perez", "Lince, Lima, Peru", 26);

        Client client2 = new Client(2, "Fernanda", "Castro", "Magdalena, Lima, Peru", 24);

        Client client3 = new Client(3, "Jhon", "Rojas", "La victoria, Lima, Peru", 36);

        clientService.addNewClient(client1);
        clientService.addNewClient(client2);
        clientService.addNewClient(client3);

        System.out.println("Cantidad de clientes: "+clientService.count());
    }
}
```

Ahora que hemos modificado y agregado mas classes a nuestro proyecto vamos a

#### Generar el artefacto

Para generar el artefacto vamos a usar el **command line**, primero accedemos a la carpeta **myproject** y ejecutamos el comando **mvn install**.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/starting-with-maven/maven_install.png" width="700" title="Generación del artefacto" alt="Generación del artefacto"></p>

Ahora dirijámonos a la carpeta del proyecto y observaremos una carpeta nueva llamada **target**, como bien se explicó, en esta carpeta almacena todos los archivos generados en la construcción del artefacto, desde **los bytecode**, los **logs de pruebas** y el archivo **`*.jar`** ejecutable.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/starting-with-maven/maven_target_folder.png" width="350" title="Carpeta target" alt="Carpeta target"></p>

En la carpera **target** se encuentra nuestro artefacto con el siguiente formato **{artefactId}-{version}.jar** que ahora vamos a probar.

#### Probar el artefacto

Ejecutemos el comando

**java -cp target/myproject-1.0.SNAPSHOT.jar com.jmarkstar.myproject.App**

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/starting-with-maven/maven_execute_artifact.png" width="750"></p>

El resultado es **3** ya que habiamos agregado justamente 3 clientes a la lista.

Ya que hemos usado un comando muy importante de maven que fue el **mvn install**, vamos a profundizar este y muchos mas comandos relacionados con

### El ciclo de vida de construccíon

Un ciclo de vida de contrucción de un proyecto maven es una pila de fases o etapas que definen el orden de una ejecución. Cada fase agrupa un conjunto de objetivos proveídas por los plugins. Un plugin agrupa un conjunto de objetivos que añade funcionalidad a Maven y un objetivo es una tarea específica que puede estar en cualquiera de las fases del ciclo de vida.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/starting-with-maven/maven_lifecycle_es.png" width="400" title="Ciclo de vida"></p>

Maven trae consigo 3 ciclos de vida estandar: **clean**, **default** y **site**. Cada ciclo de vida tiene definida sus propias fases.

Hay que tener en claro que nosotros no podemos ejecutar el ciclo de vida completo con su nombre. Por ejemplo **mvn default** no funcionaría, Tiene que ser por el nombre de la fase, por ejemplo **mvn install**. Maven buscará el ciclo de vida a la cual la fase pertenece y se ejecutará fase por fase de acuerdo al orden del ciclo de vida hasta llegar a pase ejecutada.

#### Ciclo de vida Clean


#### Ciclo de vida Default


#### Ciclo de vida Site


### Los plugins y sus objetivos



### La administración de dependencias

### Referencias

<p style="text-align:center;">
<a href="http://books.sonatype.com/mvnex-book/reference/public-book.html" target="_blank">
<img src="{{ site.baseurl_root }}/assets/img/starting-with-maven/maven_by_example_book.jpg" width="150">
</a>
&nbsp;&nbsp;
<a href="https://www.packtpub.com/application-development/mastering-apache-maven-3" target="_blank">
<img src="{{ site.baseurl_root }}/assets/img/starting-with-maven/mastering_maven_3.jpg" width="150"></a>
&nbsp;&nbsp;
<a href="http://books.sonatype.com/mvnref-book/reference/index.html" target="_blank">
<img src="{{ site.baseurl_root }}/assets/img/starting-with-maven/maven_the_complete_reference.jpg" width="150">
</a>
</p>

{% include comments.html %}
