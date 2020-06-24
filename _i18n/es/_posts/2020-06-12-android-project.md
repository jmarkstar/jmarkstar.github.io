---
layout: default
title: Gradle para desarrolladores Android
description: Este articulo es el resultado de una pequena lectura que hice sobre Gradle y me ayudo a entender mas de como y porque existen algunos archivos gradle en el proyecto de Android Studio.
cover: cover.jpg
date: 2020-06-12 02:39:00
categories: Android
tags: [Gradle, Android]
---

### Gradle para desarrolladores Android

En este articulo se esta haciendo uso de:

* JDK 1.8
* Gradle 6.5
* Kotlin DSL Script 1.1.3
* Android Studio 4.0
* Intellij IDEA 2020.1.2 Community Edition 

Gradle es una herramienta open source que automatiza la construction de un proyecto; en otras palabras compila tu codigo fuente fuente, lo empaqueta en un ejecutable(`*.jar`, `*.apk`, etc) y finalmente corre las pruebas unitarias con solo ejecutar un comando que podria ser `./gradlew clean build` por ejemplo. 

Lo bueno de gradle es que puedes crear tus propios `plugins` y  `tasks` para luego anadirlos a la ejecucion o correrlos individualmente.

Hay que tener en cuenta que __gradle funciona con JVM__, asi que tenemos que tener instalado un JDK para usarlo. Asumo que los developers de Gradle decidieron hacerlo encima del JVM para que sea portable en diferentes plataformas, pero esto no hace que se limite a trabajar solo con proyectos Java, Gradle tambien puede trabajar con proyectos en C, C++, Objective-C y Swift.

### Kotlin DSL Script

Como desarrolladores android nos hemos acostumbrado a usar __Gradle con Groovy DSL__ que Android Studio siempre crea y configura por defecto, como por ejemplo el archivo `build.gradle`. Pero ademas Gradle soporta __Kotlin DSL Script__ que desde el anio 2019 esta empezando a tomar partido. *Kotlin DSL* no es nuevo, Gradle lo ha soportado desde la version 3.0 M2 desde el anio 2016, [aqui la referencia!](https://github.com/gradle/kotlin-dsl-samples/releases?after=v0.3.1). 

Los  scripts *Kotlin DSL* extienden a `*.gradle.kts`, por ejemplo `build.gradle.kts` que actual igual a `build.gradle`. [aqui puedes leer mas de esto!](https://docs.gradle.org/current/userguide/kotlin_dsl.html).

En caso de querer migrar tu proyecto a `Kotlin DSL` este [link](https://guides.gradle.org/migrating-build-logic-from-groovy-to-kotlin/) te puede interesar.

### Gradle es uniproyecto y multiproyectos

Gradle puede hacer build(ejecutar las tareas) de varios proyectos en una sola ejecucion. Basicamente consiste en un `proyecto root` y varios `subproyectos`; estos subproyectos no necesariamente podrian estar dentro de la carpeta del proyecto `root`.

__Un proyecto creado con Android Studio es de tipo multiproyectos porque esta conformado por un `proyecto root` y el modulo `app` pero ademas podriamos agregar mas modulos, estos modulos tambien son proyectos gradle que se podrian ejecutar individualmente.__

__Entender como funciona un single project nos dara una buena introduccion a los proyectos gradle de tipo multiproyectos.__

#### Gradle Single project

Basicamente es un proyecto gradle sin subproyectos. Para esto me apoyare de `Intellij IDEA CE` y creare un proyecto gradle tal cual la image de abajo, luego de ese paso es darle un nombre al proyecto.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/gradle-android-project/gradle-singleproject-1.png" width="300" title="Creando un proyecto gradle" alt="Creando un proyecto gradle"></p>

Este proyecto contiene unos archivos gradle que estan relacionados a su ciclo de vida; asi que buscare explicar ambos a la vez; la utilidad de los archivos y el ciclo de vida de gradle.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/gradle-android-project/gradle-singleproject-2.png" width="250" title="Estructura de Proyecto Gradle" alt="Estructura de Proyecto Gradle"></p>

Gradle tiene un ciclo de vida que consta de 3 fases; iniciacion, configuracion y ejecucion.

* En __la Iniciacion__ es donde puedes anadir o cambiar el valor de las propiedades en tu ambiente y proyecto. Existen 2 archivos gradle que se ejecutan en esta fase; __init.gradle.kts__, __settings.gradle.kts__.

	El archivo __init.gradle.kts__ tiene un scope a nivel ambiente, el script que escribas aqui se ejecutaran en todos tus proyectos gradle y sera antes de `settings.gradle.kts`. [Aqui para leer mas](https://docs.gradle.org/current/userguide/init_scripts.html#init_scripts)

	El script que escribas en __settings.gradle.kts__ se ejecutara a nivel de tu proyecto, como un proyecto android es multiproject, en este archivo se espefifica a los subproyectos que se tomaran en cuenta en la ejecucion. [Aqui para leer mas](https://docs.gradle.org/current/userguide/build_lifecycle.html#sec:settings_file)
	
	




{% include comments.html %}
