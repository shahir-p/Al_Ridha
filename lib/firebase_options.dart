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
    apiKey: 'AIzaSyC5ot_LKeuumKYjMdFyo2FtfBiyK5BjXJ0',
    appId: '1:885224834649:web:2152cbb1bb9fd557151348',
    messagingSenderId: '885224834649',
    projectId: 'al-rida-8112c',
    authDomain: 'al-rida-8112c.firebaseapp.com',
    storageBucket: 'al-rida-8112c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBIvOQ4STYQs3hdZc33nRgWim9O67kS9LQ',
    appId: '1:885224834649:android:c01d0242f1d87510151348',
    messagingSenderId: '885224834649',
    projectId: 'al-rida-8112c',
    storageBucket: 'al-rida-8112c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA9W13CaeI63T5iBH7pqYfAQm3adEufsPo',
    appId: '1:885224834649:ios:da94caa71bd8b84a151348',
    messagingSenderId: '885224834649',
    projectId: 'al-rida-8112c',
    storageBucket: 'al-rida-8112c.appspot.com',
    iosBundleId: 'com.alridafrieds.alridaFrieds',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA9W13CaeI63T5iBH7pqYfAQm3adEufsPo',
    appId: '1:885224834649:ios:f8192fc9bc199037151348',
    messagingSenderId: '885224834649',
    projectId: 'al-rida-8112c',
    storageBucket: 'al-rida-8112c.appspot.com',
    iosBundleId: 'com.alridafrieds.alridaFrieds.RunnerTests',
  );
}