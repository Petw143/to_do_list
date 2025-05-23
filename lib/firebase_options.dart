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
    apiKey: 'AIzaSyAt2FvrXJt5SWPEMqz-559T9Ha6Me-jY68',
    appId: '1:680944372519:web:ea5b34cda59b97d9827702',
    messagingSenderId: '680944372519',
    projectId: 'todolist-firebaseauth01',
    authDomain: 'todolist-firebaseauth01.firebaseapp.com',
    storageBucket: 'todolist-firebaseauth01.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB1lU-xBykikIDYMezXKEW4836_EzmihTM',
    appId: '1:680944372519:android:b7234ec6bfb0f820827702',
    messagingSenderId: '680944372519',
    projectId: 'todolist-firebaseauth01',
    storageBucket: 'todolist-firebaseauth01.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAjZO1mYB4Hw9CMLgedvpnhsAsXmf1zSM4',
    appId: '1:680944372519:ios:73eaaae4a4dc2892827702',
    messagingSenderId: '680944372519',
    projectId: 'todolist-firebaseauth01',
    storageBucket: 'todolist-firebaseauth01.firebasestorage.app',
    iosBundleId: 'com.example.toDoList',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAjZO1mYB4Hw9CMLgedvpnhsAsXmf1zSM4',
    appId: '1:680944372519:ios:73eaaae4a4dc2892827702',
    messagingSenderId: '680944372519',
    projectId: 'todolist-firebaseauth01',
    storageBucket: 'todolist-firebaseauth01.firebasestorage.app',
    iosBundleId: 'com.example.toDoList',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAt2FvrXJt5SWPEMqz-559T9Ha6Me-jY68',
    appId: '1:680944372519:web:c36b40e828c40c01827702',
    messagingSenderId: '680944372519',
    projectId: 'todolist-firebaseauth01',
    authDomain: 'todolist-firebaseauth01.firebaseapp.com',
    storageBucket: 'todolist-firebaseauth01.firebasestorage.app',
  );
}
