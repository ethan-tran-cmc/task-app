# Task App

## Table of Contents

1. [Demo](#demo)
2. [Environment](#environment)
4. [Setup and Installation](#setup-and-installation)
5. [Run project](#run-project)
6. [Build app](#build-app)
7. [Architecture of boilerplate](#architecture-of-boilerplate)
8. [Folder structure](#folder-structure)
9. [Use custom setting](#use-custom-setting)

## <a name="demo">#</a> Demo 🎬


https://user-images.githubusercontent.com/131247282/233044888-1a3496e9-30d5-421e-9228-fb46eb3e702c.mp4

## <a name="environment">#</a> Environment ⛩ 

| Tool name      | version             |
| -------------- | ------------------- |
| VS Code        | 1.77.3              |
| Android Studio | Arctic Fox 2021.3   |
| Xcode          | 13.4.1              |
| Fvm            | 2.4.1               |

| Programming language | version |
| -------------------- | ------- |
| Dart                 | 2.19.6  |

| Framework | version                 |
| --------- | ----------------------- |
| Flutter   | 3.7.11 (stable release) |
| CocoaPods | 1.11.3                  |


## <a name="setup-and-installation">#</a> 🔧 Setup and Installation
- Step 1: [Install fvm](https://fvm.app/docs/getting_started/installation/). Use FVM to manage the Flutter SDK version for any projects
- Step 2: Execute `$ fvm install 3.7.11` to download the flutter SDK.
- Step 2: Access the repository folder and execute `$ fvm use 3.7.11` to use this Flutter version for project 
- Step 3: Execute `$ fvm flutter doctor` to verify installations
- Step 4: Execute `$ fvm flutter pub get` to pull project dependencies
- Step 5: Execute `$ fvm flutter packages pub run build_runner build --delete-conflicting-outputs` to generate file

## <a name="run-project">#</a> 🏃‍♂️ Run project
### With fvm
- `$ fvm flutter run --flavor development -t lib/main/main_development.dart`
- `$ fvm flutter run --flavor staging -t lib/main/main_staging.dart`
- `$ fvm flutter run --flavor production -t lib/main/main_production.dart`
### Without fvm
- `$ flutter run --flavor development -t lib/main/main_development.dart`
- `$ flutter run --flavor staging -t lib/main/main_staging.dart`
- `$ flutter run --flavor production -t lib/main/main_production.dart`

## Screenshot

- **Home(task list)**
![simulator_screenshot_A831A715-7059-4D22-8DDE-72BF95F06D94](https://user-images.githubusercontent.com/131247282/233046920-398d9063-58de-4fe9-8cc8-a6d12c0bb385.png)
![simulator_screenshot_C484462C-4296-4298-9838-9188173C53B8](https://user-images.githubusercontent.com/131247282/233047189-529ffbe6-1236-4f8a-89c5-7f3bd51bff33.png)

- **Create task**
![simulator_screenshot_E68CD97D-1FAD-40C4-9F93-83D24552FDFC](https://user-images.githubusercontent.com/131247282/233047014-6252561b-3a76-4622-a64d-5af1a71ac0d5.png)
![simulator_screenshot_E96AFDCD-8A1D-4A90-9B66-8A753277783F](https://user-images.githubusercontent.com/131247282/233047044-7ba9f627-b9c9-427a-800b-9f0423af013b.png)
![simulator_screenshot_76E97582-E14E-4B04-94AD-FA5D964F6634](https://user-images.githubusercontent.com/131247282/233047099-f826e1e9-eab8-4bb4-8c93-3444e7408240.png)
![simulator_screenshot_DAB5C48C-74E8-4093-873D-42270A8C925A](https://user-images.githubusercontent.com/131247282/233047125-d6d6c628-0ff6-4d4c-8af7-492e6e86e574.png)
- **Update task**
![simulator_screenshot_26CDA524-2A13-43A0-8457-FE3D5974A4EB](https://user-images.githubusercontent.com/131247282/233047250-a9780d5c-d3b9-4c3a-a8c1-2a7bbe9d8062.png)
