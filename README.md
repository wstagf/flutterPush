# flutterPush
Experimento Flutter com Push Notification pelo Onesignal e Firebase


* Run
  * flutter emulators --launch TelefonePequeno

* build codes

    * flutter packages pub run build_runner watch --delete-conflicting-outputs

    * flutter packages pub run build_runner build --delete-conflicting-outputs


1. Gernerate firebase sha-1
    * cd project/android
    * gradlew signinReport 
    * dowload file and put in project/android/app/google-services.json


2. Add SDK
    * project/android/build.gradle
        * check if exists goole() in buildscript/repositories
        * add line to into dependencies exists in buildscript:      classpath 'com.google.gms:google-services:4.3.3'
           * check if exists goole() in allprojects/repositories
    * project/android/app/build.gradle
        * add line to dependencies:   implementation 'com.google.firebase:firebase-analytics:17.2.2'
        * add line to final file:  apply plugin: 'com.google.gms.google-services'
    * restart / rebuild project
    


