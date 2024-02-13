# login_registration

A new Flutter project.

Flutter App
This is a Flutter app with NodeJS and APIs from https://newsapi.org/.

Installation
Clone the Repository
Clone this repository to your local machine using Git:

bash
'''
git clone https://github.com/SajeedKhan23/PlyPicker.git
'''
Navigate to the login_regitration folder (for installation of server_backend go to this repository for instructions : https://github.com/SajeedKhan23/PlyPicker/tree/main/server%20backend)
Navigate to the directory where you cloned the repository:

Install Dependencies
Before running the app, make sure to install all dependencies. Run the following command in your terminal:

bash
'''
flutter pub get
'''
This command will download and install all the dependencies listed in the pubspec.yaml file.

Configuration
make sure to go to https://newsapi.org/ and get your key and replace them in news_services.dart file in lib/services/news_services.dart

Build the App
Before running the app, you may need to build it for your specific platform. Use the following command to build the app:

bash
'''
flutter build <platform>
'''
Replace <platform> with the platform you want to build for, such as android, ios, or web.

Run the App
Once the app is built, you can run it using the following command:

bash
'''
flutter run
'''
This will start the app in debug mode on your connected device or emulator.

Dependencies used : 
  api_cache_manager: ^1.0.2
  snippet_coder_utils: ^1.0.13
  dio: ^5.0.0
  flutter_riverpod: ^1.0.3+1
  freezed_annotation: ^2.1.0
  cached_network_image: ^3.2.0
  cupertino_icons: ^1.0.2
  http: ^1.2.0

Usage:
first register to app and then login to news feed app.
make sure the server.js file is running seperately.

License
[Made by Sajeed Khan - 2024]
