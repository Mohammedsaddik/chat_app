// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCRqu9HwRq3_zFZfaHxxi-v3itVtdtS1YM',
    appId: '1:555161801937:web:bfa6c1c6ed94d6539221f0',
    messagingSenderId: '555161801937',
    projectId: 'chat-app-16bde',
    authDomain: 'chat-app-16bde.firebaseapp.com',
    storageBucket: 'chat-app-16bde.appspot.com',
    measurementId: 'G-4QSPWB3EQE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC0mCBGNl-QCdhzUwWtbadaqkgc1urBypo',
    appId: '1:555161801937:android:89a309622b7244409221f0',
    messagingSenderId: '555161801937',
    projectId: 'chat-app-16bde',
    storageBucket: 'chat-app-16bde.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC2ivZE7nMAL4V99Jq4lor-b9RBW-t8eYw',
    appId: '1:555161801937:ios:280db735d160437f9221f0',
    messagingSenderId: '555161801937',
    projectId: 'chat-app-16bde',
    storageBucket: 'chat-app-16bde.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC2ivZE7nMAL4V99Jq4lor-b9RBW-t8eYw',
    appId: '1:555161801937:ios:82eac7ff6e4fdad79221f0',
    messagingSenderId: '555161801937',
    projectId: 'chat-app-16bde',
    storageBucket: 'chat-app-16bde.appspot.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}
