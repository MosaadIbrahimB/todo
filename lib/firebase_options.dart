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
    apiKey: 'AIzaSyD18p2j9Y4II2ve8Cs33fpVdwiQgS1hf9U',
    appId: '1:348374071937:web:2b4af1a01a7c4395a86b80',
    messagingSenderId: '348374071937',
    projectId: 'todo-app-455',
    authDomain: 'todo-app-455.firebaseapp.com',
    storageBucket: 'todo-app-455.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCJV1kF6QcLiKOIiPqpCctLlctEm9ETotA',
    appId: '1:348374071937:android:2b539f66b19d210ca86b80',
    messagingSenderId: '348374071937',
    projectId: 'todo-app-455',
    storageBucket: 'todo-app-455.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBNboMMC-iq__PAeH_Arqxjng8KQoM61jw',
    appId: '1:348374071937:ios:18e3c6eb2f7ce3a7a86b80',
    messagingSenderId: '348374071937',
    projectId: 'todo-app-455',
    storageBucket: 'todo-app-455.appspot.com',
    iosClientId: '348374071937-fug69l2v8a7nabo8186uomjon54tr38i.apps.googleusercontent.com',
    iosBundleId: 'com.example.todo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBNboMMC-iq__PAeH_Arqxjng8KQoM61jw',
    appId: '1:348374071937:ios:7147ed65e2e32313a86b80',
    messagingSenderId: '348374071937',
    projectId: 'todo-app-455',
    storageBucket: 'todo-app-455.appspot.com',
    iosClientId: '348374071937-f1nl9q21g3tqv2vqrlsb9qqrfgmj84tp.apps.googleusercontent.com',
    iosBundleId: 'com.example.todo.RunnerTests',
  );
}