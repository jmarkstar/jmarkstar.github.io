---
layout: post
title: "Instalando Gradle"
description: 
headline: 
modified: 2015-12-07
category: gradle
tags: []
imagefeature: cover9.jpg
comments: true
Instalando Gradle: 
---

Primeramente temenos que agregar la ruta del gradle como variable del sistema en nuestra computadora, para esto usaremos vi en caso de mac.

vi ~/.profile

GRADLE_HOME=/Users/{yourUsername}/Library/gradle;

export GRADLE_HOME

export PATH=$PATH:$GRADLE_HOME/bin 

para finalizar, guardamos los cambios y cerramos con el siguiente comando de vi: 

:wq

Para probar si ya tenemos nuestro gradle correctamente instalado, realizaremos la verificación con el siguiente comando: gradle -v

