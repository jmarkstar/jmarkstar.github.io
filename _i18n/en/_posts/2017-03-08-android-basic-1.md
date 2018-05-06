---
layout: default
title: Installing Android Studio 3.1.2
description: This article is the first one of the android basic course. Here, we´re going to install and configure quickly Android studio 2.3 to begin coding.
cover: cover.jpg
date: 2017-03-08 15:07:00
categories: AndroidBasico
tags: [Android_basico]
---
## Installing Android Studio 3.1.2

If you are completely new on Android and want to take your first step, this will be a good article for you. Here, I'm going to teach you how to install and configure Android Studio and how to create a project to run it on a emulator. The steps to follow are:
* Installing Java 10
* Configuring Java 10
* Installing Android Studio 3.1.2
* Creating an android project
* Creating an Android emulator
* Running of our project on the emulator

Let's start.

### Installing Java 10

**Note: If you already have installed Java 7, 8 or 9, you can skip this step.**

First of all we are going to download and install Java 10. **Why?**, It´s because Java is the choosen language by google to coding android apps. For that reason, We have to download the JDK. **What is the JDK?**, It´s a bundle of tools to code with the java language, Among them we have the **JVM**(Java Virtual Machine), **Java Standard Libraries** which we could use and more tools.

Let's go to the [Oracle Official web page](http://www.oracle.com/technetwork/java/javase/downloads/jdk10-downloads-4416644.html) to download the JDK(Java Development Kit).

This section of the page is important for us.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/install_java_1.png" width="400" title="Sección para descargar el JDK" alt="Sección para descargar el JDK"></p>

Firstly, we have to accept the license clicking on **Accept License Agreement**.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/install_java_2.png" width="350" title="Aceptar la licencia" alt="Aceptar la licencia"></p>

We can download JDK now :). Choose the correct jdk according your operating system. In this case, I'll choose for **Windows x64**.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/install_java_3.png" width="400" title="Descargar el JDK de acuerdo a tu Sistema operativo" alt="Descargar el JDK de acuerdo a tu Sistema operativo"></p>

Once you have downloaded the *\*.exe* file. Just execute it and clicking on the **Next** buttons until arrive to this screen.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/install_java_4.png" width="350" title="Java fue Instalado" alt="Java fue Instalado"></p>

### Configuring Java 10

In this step, we're going to add a environment variable named **JAVA_HOME** on our operating system and as its value will be the address ofthe folder where we installed java before.

##### ¿Why should we configure JAVA_HOME?
If we don't configure JAVA_HOME, we won´t be able to use the tools which java provides us on our operating system. Java has a bundle of tools which we could use them as a command on the command line. Android Studio needs those tools to run some features. Those tools are on C:\Program Files\Java\jdk-10.0.1**\bin**.

If we haven't already configured it, our operating system won't recognize the command to see the version of installed  java: **java -version**.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/config_java_1.png" width="400" title="Windows no reconoce el comando Java" alt="Windows no reconoce el comando Java"></p>

We should follow those steps to configure an environment variable:

Right click on **This PC**. Then, click on **Properties**.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/config_java_2_en.png" width="200" title="" alt=""></p>

Left click on **Advanced system settings**.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/config_java_3_en.png" width="550" title="" alt=""></p>

We'll see the screen **System Properties** and click on **Environment Variable**:

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/config_java_4_en.png" width="350" title="" alt=""></p>

Once you are in the screen of **Environment Variable**, click on **New**:

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/config_java_5_en.png" width="350" title="" alt=""></p>

We'll see a small screen where we'll add the information of JAVA_HOME:
On **Variable name** we are going to set **JAVA_HOME** and on **Variable value** we are going to set **the address of the folder where you installed java**.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/config_java_10_en.png" width="350" title="" alt=""></p>

Go to **C:** -> **Program Files** y **Java**. You'll see two folders, choose **jdk-10.0.1**.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/config_java_6_en.png" width="250" title="" alt=""></p>

Finally, We'll have this result and click on **OK**.
<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/config_java_7_en.png" width="350" title="" alt=""></p>

You need to change the **Path variable** now. To do that, you should select it and click on **Edit...**.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/config_java_8_en.png" width="350" title="" alt=""></p>

Go to the end of the value and add **;%JAVA_HOME%\bin**.
<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/config_java_9.png" width="350" title="" alt=""></p>

Finally, we are going to test the command **java -version** which windows did not recognized at the beginning.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/config_java_12.png" width="350" title="" alt=""></p>

Windows is recognizing the command now.

### Installing Android Studio 3.1.2

Now that we have installed JDK on our computer, we already could install Android Studio without troubles. To do that, go to the  [Offical page](https://developer.android.com/studio/index.html) and you will see that button **Download android studio**.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/install_android_1.png" width="400" title="" alt=""></p>

Click it, and you will see the license, check it and download it.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/install_android_2.png" width="400" title="" alt=""></p>

Now that you have the *\*.exe* on your computer, run it and click on the next buttons until arrive to the screen with the **install** button, then wait and go for a coffee.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/install_android_3.png" width="400"></p>

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/install_android_4.png" width="400"></p>

Finally...

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/install_android_5.png" width="400" title="End of the installation" alt="End of the installation"></p>

If this is the first time you install android studio, choose the last option and click ok, because you don't have old settings to import on this new android studio.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/install_android_6.png" width="400"></p>

Now we can see the screen to configure the **Android SDK** in Android Studio.

**Note: Android Studio is just an editor and for compiling, executing, debbuging and test our apps we need the Android SDK, this contents many tools for android development.**

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/install_android_7.png" width="400"></p>

Select the configuration type. I recommend to keep selecting the **Standard** option.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/install_android_8.png" width="400"></p>

Now, select the Android Studio's UI Theme, choose the one you like. I selected **Darcula** in my case :D.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/install_android_9.png" width="400"></p>

In this screen we are going to configure the **Android SDK Path**, if we already have one installed the wizard will detect it automatically, but if It's a new install we could indicate the folter where we want android sdk to install.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/install_android_13.png" width="400"></p>

Click on **Finish** to download, install and configure the selected options before.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/install_android_10.png" width="400"></p>

We already have installed the necessary components for android studio to work properly.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/install_android_11.png" width="400"></p>

We already have Android Studio ready to create our first project.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/install_android_12.png" width="400"></p>

### Creating an android project

To create a new Android Project, click on **Start a new Android Studio Project**.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/creating_project_1.png" width="500"></p>

Set the **Application Name**, **Company Domain** and change the auto generated package name if you want. To do that, click on **Edit**. Click on **Next** to continue.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/creating_project_2.png" width="500"></p>

Choose which devices you want to run your app, choose the first one for our first app. Click on **Help me choose** to select the android version, choose **6.0 Marshmelow** for the moment. Click on **OK** and click on **Next** to continue.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/creating_project_3.png" width="500"></p>

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/creating_project_4.png" width="500"></p>

Cuando creamos un proyecto android, este ya viene con una pantalla por defecto. Por ahora solo escogeremos que la pantalla esté vacía; Clickamos en **Empty Activity** y vamos a siguiente paso clickando en el botón **Next**.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/creating_project_5.png" width="500"></p>

Regresando a la imagen. Existen 2 campos importantes, el **Activity Name** es para darle nombre al archivo **\*.java** y el campo **Layout Name** es para darle nombre al archivo **\*.xml**. Podemos dejarlo con los nombres por defecto si deseamos y clickamos en **Finish**.

We are going to name the default screen on our project. And activity is the representation of a screen on android. This activity is divided on two parts. The first one is an xml file where we'll design our screen(buttons, text boxes, etc). And the second one is a java file where we'll code the behavior of the view components designed on the xml file.

On the **Activity Name** field we'll put the name for the java file and on the **Layout Name** field we'll put the name for the xml file. Click on **Finish** to create the project.


<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/creating_project_6.png" width="500"></p>

We already have our first android project created.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/creating_project_7.png" width="500"></p>

### Creating an Android Emulator

We are going to create an android emulator to run our app on this but **What is an android emulator?**, This simulates a real device on our computer, we can install and uninstall apps on this.

First, click on **AVD Manager**.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/creating_emulator_1.png" width="500"></p>

**AVD** means Android Virtual Device, for more information have a look the [the official page](https://developer.android.com/studio/run/managing-avds.html).

Click on **Create Virtual Device**.
<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/creating_emulator_2.png" width="400"></p>

Choose an Smarthphone's model and click on **Next**. On my case, I'll choose the **Galaxy Nexus**.
<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/creating_emulator_3.png" width="400"></p>

Choose the android version for you emulator. We just have **Nougat - V7.0** downloaded for the moment. select it and click on **Next**.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/creating_emulator_4.png" width="400"></p>

In this last step, we could add and remove features for our emulator but we dont do that for the moment. Just click on **finish**.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/creating_emulator_5.png" width="400"></p>

We could see our emulator on a list, click on **Play** to run it.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/creating_emulator_6.png" width="400"></p>

Wait for a moment and you will see an Smarthphone running on your computer :).

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/creating_emulator_7.png" width="400"></p>

### Running of our project on the emulator

Now that we have our app created and our emulator running, we will run the project on the emulator clicking on the button **Run**.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/running_app_1.png" width="400"></p>

Since we already have an emulator running well, we will see the name of this emulator on the list of connected devices, choose it and click **OK**.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/running_app_2.png" width="400"></p>

Wait a moment and our first app will be displayed in the emulator.

<p style="text-align:center;"><img src="{{ site.baseurl_root }}/assets/img/android-basic-1/running_app_3.png" width="400"></p>

I hope this article has been helpful.

Thanks for the visit.

{% include comments.html %}
