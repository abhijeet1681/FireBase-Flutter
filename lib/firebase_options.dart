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
        return windows;
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
    apiKey: 'AIzaSyCcuJNqetq9CbZXAGEBx-N-J0rSHXkBnBI',
    appId: '1:962759037664:web:82138edafa7546a4887685',
    messagingSenderId: '962759037664',
    projectId: 'flutter-database-project-6a2a5',
    authDomain: 'flutter-database-project-6a2a5.firebaseapp.com',
    storageBucket: 'flutter-database-project-6a2a5.firebasestorage.app',
    measurementId: 'G-W3714FHNG9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDbGCQvIvn84nm7Fbd4HD3xgiHju9vYt8c',
    appId: '1:962759037664:android:7876618fffa40927887685',
    messagingSenderId: '962759037664',
    projectId: 'flutter-database-project-6a2a5',
    storageBucket: 'flutter-database-project-6a2a5.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAtTG6keOvCt9_K7BXrH-9dVgplIbccNYc',
    appId: '1:962759037664:ios:230f6a4957a9ed11887685',
    messagingSenderId: '962759037664',
    projectId: 'flutter-database-project-6a2a5',
    storageBucket: 'flutter-database-project-6a2a5.firebasestorage.app',
    iosBundleId: 'com.example.dbConnection',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAtTG6keOvCt9_K7BXrH-9dVgplIbccNYc',
    appId: '1:962759037664:ios:230f6a4957a9ed11887685',
    messagingSenderId: '962759037664',
    projectId: 'flutter-database-project-6a2a5',
    storageBucket: 'flutter-database-project-6a2a5.firebasestorage.app',
    iosBundleId: 'com.example.dbConnection',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCcuJNqetq9CbZXAGEBx-N-J0rSHXkBnBI',
    appId: '1:962759037664:web:cbd45130ff62dedb887685',
    messagingSenderId: '962759037664',
    projectId: 'flutter-database-project-6a2a5',
    authDomain: 'flutter-database-project-6a2a5.firebaseapp.com',
    storageBucket: 'flutter-database-project-6a2a5.firebasestorage.app',
    measurementId: 'G-MKB10XTLV2',
  );
}
