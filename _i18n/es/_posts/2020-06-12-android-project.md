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

* Gradle 6.5

* Kotlin DSL Script 1.1.3

* Android Studio 4.0

* Intellij IDEA 2020.1.2 Community Edition 

Gradle es una herramienta open source que automatiza la construction de un proyecto; en otras palabras compila tu codigo fuente fuente, lo empaqueta en un ejecutable(`*.jar`, `*.apk`, etc) y finalmente corre las pruebas unitarias con solo ejecutar un comando que podria ser `./gradlew clean build` por ejemplo. 

Lo bueno de gradle es que puedes crear tus propios `plugins` y  `tasks` para luego anadirlos a la ejecucion o correrlos individualmente.

### Kotlin DSL Script

Como desarrolladores android nos hemos acostumbrado a usar __Gradle con Groovy DSL__ que Android Studio siempre crea y configura por defecto, como por ejemplo el archivo `build.gradle`. Pero ademas Gradle soporta __Kotlin DSL Script__ que desde el anio 2019 esta empezando a tomar partido. *Kotlin DSL* no es nuevo, Gradle lo ha soportado desde la version 3.0 M2 desde el anio 2016, [aqui la referencia!](https://github.com/gradle/kotlin-dsl-samples/releases?after=v0.3.1). 

Los  scripts *Kotlin DSL* extienden a `*.kts`, por ejemplo `build.gradle.kts`.

### Gradle es uniproyecto y multiproyectos

Gradle puede hacer build(ejecutar las tareas) de varios proyecto en una sola ejecucion. Basicamente consiste en un `proyecto root` y varios `subproyectos`; estos subproyectos no necesariamente podrian estar dentro de la carpeta del proyecto `root`.

__Un proyecto creado con Android Studio es de tipo multiproyectos porque conforma un proyecto root y sus modulos, estos modulos tambien son proyectos gradle que se podrian ejecutar individualmente.__

__Entender como funciona un single project ayudara a que sea mas facil entender un proyecto gradle de tipo multiproyectos__

#### Gradle Single project

Un `gradle single project` es un proyecto gradle sin subproyectos. Para esto me apoyare de `Intellij IDEA CE` y creare un proyecto gradle tal cual la image de abajo, luego de ese paso es darle un nombre al proyecto.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/gradle-android-project/gradle-singleproject-1.png" width="300" title="Creando un proyecto gradle" alt="Creando un proyecto gradle"></p>

Este proyecto contiene unos archivos gradle que estan relacionados a su ciclo de vida; asi que buscare explicar ambos a la vez; la utilidad de los archivos y el ciclo de vida de gradle.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/gradle-android-project/gradle-singleproject-2.png" width="250" title="Estructura de Proyecto Gradle" alt="Estructura de Proyecto Gradle"></p>

Gradle tiene un ciclo de vida que consta de 3 fases; iniciacion, configuracion y ejecucion.

* El __la Iniciacion__ es donde puedes anadir o cambiar el valor de las propiedades del ambiente gradle en tu proyecto y en caso de un multiproyectos, mensionar a todos los subproyectos que correran en la ejecucion. 

	Para esto existe el archivo __settings.gradle.kts__ 




{% include comments.html %}
