# Imageker App

A simple Image Picker application

## How to Run the Application

Follow these quick steps to get the application running on your device:

1. Clone the Repository:
```bash
  git clone https://github.com/derysaelim/imageker_app/
```
2. Enter the Project Directory:
```bash
  cd imageker_app
```
3. Install Dependencies:
```bash
  flutter pub get
```
4. Run Application
```bash
  flutter run
```

## Packages Used

This project relies on two core Flutter community packages to handle the main functionalities:

- image_picker:

Function: Used to interact with the device's gallery (or camera), allowing the user to select an image file.

Version Used: 1.2.0

- permission_handler:

Function: Used to fully handle the runtime permission flow (Android & iOS). This package is responsible for checking permission status, requesting permission from the user, and redirecting the user to App Settings if permission is permanently denied.

Version Used: 12.0.1
