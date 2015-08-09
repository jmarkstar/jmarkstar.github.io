---
layout: post
title: "Cambiando El puerto de Oracle Web Console"
description: 
headline: 
modified: 2015-08-09
category: Oracle
tags: []
imagefeature: cover1.jpg
comments: true
mathjax: 
---

Cuando instalas oracle en tu ordenador, ademas de instalarse el motor de la base de datos tambien se añade una aplicación web
en **el puerto 8080**, este web app te permitirá administrar la base de datos visualmente desde un browser en caso de que no quieras usar 
las lineas de comandos.

Problema: Cuando desarrollas aplicaciones web en java vas a querer levantar algun servidor de aplicaciones como por ejemplo tomcat, glassfish o jboss as;
estos normalmente se ejecutan en el puerto 8080 pero como ya tenemos ocupado este puerto, no vamos a poder levarlalos. Para este problema solo tenemos que ejecutar un comando una vez logueado en sql-plus.
 
![oraclepuerto]({{ site.url }}/images/postimages/oraclepuerto.png)