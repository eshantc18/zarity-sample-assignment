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
    apiKey: 'AIzaSyAqvs55ZAoClqWM9W37aKTb45foHX-OOa8',
    appId: '1:1000242545098:web:772b6a626151073e244f33',
    messagingSenderId: '1000242545098',
    projectId: 'zarity-sample-work',
    authDomain: 'zarity-sample-work.firebaseapp.com',
    storageBucket: 'zarity-sample-work.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCtbuPJt885qRj5dvCsfl6by8RVnhvdyLk',
    appId: '1:1000242545098:android:1b8bb0c0a32ef524244f33',
    messagingSenderId: '1000242545098',
    projectId: 'zarity-sample-work',
    storageBucket: 'zarity-sample-work.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyABqRq31fjvKX3VbLp50MU1Yl8bzpO1Wbg',
    appId: '1:1000242545098:ios:bf006e553fcfe38b244f33',
    messagingSenderId: '1000242545098',
    projectId: 'zarity-sample-work',
    storageBucket: 'zarity-sample-work.appspot.com',
    iosClientId: '1000242545098-h6pgrddav8fpui6bg6o45aorvgaqfiht.apps.googleusercontent.com',
    iosBundleId: 'com.example.zaritySampleWork',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyABqRq31fjvKX3VbLp50MU1Yl8bzpO1Wbg',
    appId: '1:1000242545098:ios:bf006e553fcfe38b244f33',
    messagingSenderId: '1000242545098',
    projectId: 'zarity-sample-work',
    storageBucket: 'zarity-sample-work.appspot.com',
    iosClientId: '1000242545098-h6pgrddav8fpui6bg6o45aorvgaqfiht.apps.googleusercontent.com',
    iosBundleId: 'com.example.zaritySampleWork',
  );
}
