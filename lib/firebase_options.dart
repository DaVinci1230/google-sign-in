import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyAOb7u2DR1d4Fo4Pfi6tPVRIieB1KuNn_M',
    appId: '1:1058669706681:web:07a37982e6f66296720a68',
    messagingSenderId: '1058669706681',
    projectId: 'fluttersignin-acca0',
    authDomain: 'fluttersignin-acca0.firebaseapp.com',
    storageBucket: 'fluttersignin-acca0.appspot.com',
    measurementId: 'G-91FSQTGJH8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAOb7u2DR1d4Fo4Pfi6tPVRIieB1KuNn_M',
    appId: '1:1058669706681:android:770294114c1f0e60720a68',
    messagingSenderId: '1058669706681',
    projectId: 'fluttersignin-acca0',
    storageBucket: 'fluttersignin-acca0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAOb7u2DR1d4Fo4Pfi6tPVRIieB1KuNn_M',
    appId: '1:1058669706681:web:07a37982e6f66296720a68',
    messagingSenderId: '1058669706681',
    projectId: 'fluttersignin-acca0',
    storageBucket: 'fluttersignin-acca0.appspot.com',
    androidClientId: '1058669706681-vdnoi1347un2286ke87vhf6fhnlq46kh.apps.googleusercontent.com',
    iosClientId: '1058669706681-p310jul706v8f421fr8k6hhmnn4mc486.apps.googleusercontent.com',
    iosBundleId: 'com.googlesignin',
  );
}
