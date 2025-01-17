// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: "AIzaSyAIDR-cKt_Rbap8WE-eZ7Z9pWYTtJ2arUQ",
    authDomain: "filmaiada-33122.firebaseapp.com",
    databaseURL: "https://filmaiada-33122-default-rtdb.firebaseio.com",
    projectId: "filmaiada-33122",
    storageBucket: "filmaiada-33122.firebasestorage.app",
    messagingSenderId: "757075726048",
    appId: "1:757075726048:web:3854ef9b7b7f4ade4b4a85"
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDiQx-x-pKAS__IgLoa3loP3zUQZX1VjOU',
    appId: '1:757075726048:android:14dec94a8b3fec4f4b4a85',
    messagingSenderId: '757075726048',
    projectId: 'filmaiada-33122',
    databaseURL: 'https://filmaiada-33122-default-rtdb.firebaseio.com',
    storageBucket: 'filmaiada-33122.firebasestorage.app',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAIDR-cKt_Rbap8WE-eZ7Z9pWYTtJ2arUQ',
    appId: '1:757075726048:web:35101f89072592e74b4a85',
    messagingSenderId: '757075726048',
    projectId: 'filmaiada-33122',
    authDomain: 'filmaiada-33122.firebaseapp.com',
    databaseURL: 'https://filmaiada-33122-default-rtdb.firebaseio.com',
    storageBucket: 'filmaiada-33122.firebasestorage.app',
  );
}
