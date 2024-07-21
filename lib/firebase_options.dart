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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDXXegL5jME1QnwyMp-9pzR2T1LwXTedtk',
    appId: '1:403332127037:web:67f08cfbd6bde8c7ea0d54',
    messagingSenderId: '403332127037',
    projectId: 'sign-in-firebase-93418',
    authDomain: 'sign-in-firebase-93418.firebaseapp.com',
    storageBucket: 'sign-in-firebase-93418.appspot.com',
    measurementId: 'G-25NDJKBLS2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD2CUGsJkU8JKWhJs2YKDe8WQ_sqH03380',
    appId: '1:403332127037:android:df258b53bb4fa2eeea0d54',
    messagingSenderId: '403332127037',
    projectId: 'sign-in-firebase-93418',
    storageBucket: 'sign-in-firebase-93418.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD0qd1tK0kqGrA5BLVGWi74sjafkmnLqo0',
    appId: '1:403332127037:ios:ca733b3915d59a76ea0d54',
    messagingSenderId: '403332127037',
    projectId: 'sign-in-firebase-93418',
    storageBucket: 'sign-in-firebase-93418.appspot.com',
    androidClientId: '403332127037-cfcmkuj8bu6a6pjk7q5a8q5q44bj6jfm.apps.googleusercontent.com',
    iosClientId: '403332127037-obmo3e7j6u826o28122pdc91qeap7e7b.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutter-animations2',
  );
}
