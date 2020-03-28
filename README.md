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

