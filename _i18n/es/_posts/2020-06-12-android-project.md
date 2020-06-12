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




{% include comments.html %}
