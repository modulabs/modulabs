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
    apiKey: 'AIzaSyAROMrWp5sTbmyMSWT9KHoMysPF7m3mNQ8',
    appId: '1:587119900259:web:2deec8723ebaf8222b2a56',
    messagingSenderId: '587119900259',
    projectId: 'tiktok-12a13',
    authDomain: 'tiktok-12a13.firebaseapp.com',
    storageBucket: 'tiktok-12a13.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAywsMVlxYbzY0sAttDd-9JZskZCUQUM4M',
    appId: '1:587119900259:android:9922adb252047cb82b2a56',
    messagingSenderId: '587119900259',
    projectId: 'tiktok-12a13',
    storageBucket: 'tiktok-12a13.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDjj_tjWL9o7kk8hyT7afHJ5NC9cEe94DA',
    appId: '1:587119900259:ios:23084b78269a9f812b2a56',
    messagingSenderId: '587119900259',
    projectId: 'tiktok-12a13',
    storageBucket: 'tiktok-12a13.appspot.com',
    iosClientId: '587119900259-m5i13fdln8ettn5ohk7lli159jg8v1uu.apps.googleusercontent.com',
    iosBundleId: 'com.example.moduTiktok',
  );
}