@echo off
set JAVA_HOME=C:\Walkman-tools\java\jdk-17.0.21+9
call C:\Walkman-tools\android-sdk\build-tools\36.0.0\apksigner.bat verify --verbose app\build\outputs\apk\debug\app-debug.apk
