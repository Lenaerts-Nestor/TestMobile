// // File generated by FlutterFire CLI.
// // ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
// import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
// import 'package:flutter/foundation.dart'
//     show defaultTargetPlatform, kIsWeb, TargetPlatform;

// /// Default [FirebaseOptions] for use with your Firebase apps.
// ///
// /// Example:
// /// ```dart
// /// import 'firebase_options.dart';
// /// // ...
// /// await Firebase.initializeApp(
// ///   options: DefaultFirebaseOptions.currentPlatform,
// /// );
// /// ```
// class DefaultFirebaseOptions {
//   static FirebaseOptions get currentPlatform {
//     if (kIsWeb) {
//       return web;
//     }
//     switch (defaultTargetPlatform) {
//       case TargetPlatform.android:
//         return android;
//       case TargetPlatform.iOS:
//         return ios;
//       case TargetPlatform.macOS:
//         return macos;
//       case TargetPlatform.windows:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for windows - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       case TargetPlatform.linux:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for linux - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       default:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions are not supported for this platform.',
//         );
//     }
//   }

//   static const FirebaseOptions web = FirebaseOptions(
//     apiKey: 'AIzaSyAF4i29u2Eyca3ustT5vtzeM0HxaU7pJzY',
//     appId: '1:260571094003:web:2ab17a9c85ba65bda19086',
//     messagingSenderId: '260571094003',
//     projectId: 'mobile-parkflow',
//     authDomain: 'mobile-parkflow.firebaseapp.com',
//     storageBucket: 'mobile-parkflow.appspot.com',
//     measurementId: 'G-Q973QDETYF',
//   );

//   static const FirebaseOptions android = FirebaseOptions(
//     apiKey: 'AIzaSyDIsySO2Rx6ERxRMpXIU5hzRuJ88jQ4kUo',
//     appId: '1:260571094003:android:fc1c640db76c0530a19086',
//     messagingSenderId: '260571094003',
//     projectId: 'mobile-parkflow',
//     storageBucket: 'mobile-parkflow.appspot.com',
//   );

//   static const FirebaseOptions ios = FirebaseOptions(
//     apiKey: 'AIzaSyCzqIpovc3TKcMqgu9Sh75jPQvtbisLjzU',
//     appId: '1:260571094003:ios:f5a947556abedc3ba19086',
//     messagingSenderId: '260571094003',
//     projectId: 'mobile-parkflow',
//     storageBucket: 'mobile-parkflow.appspot.com',
//     iosClientId: '260571094003-dtt3fp0989d53573pl1v8u7varhdcn3h.apps.googleusercontent.com',
//     iosBundleId: 'com.example.parkflowProject',
//   );

//   static const FirebaseOptions macos = FirebaseOptions(
//     apiKey: 'AIzaSyCzqIpovc3TKcMqgu9Sh75jPQvtbisLjzU',
//     appId: '1:260571094003:ios:f5a947556abedc3ba19086',
//     messagingSenderId: '260571094003',
//     projectId: 'mobile-parkflow',
//     storageBucket: 'mobile-parkflow.appspot.com',
//     iosClientId: '260571094003-dtt3fp0989d53573pl1v8u7varhdcn3h.apps.googleusercontent.com',
//     iosBundleId: 'com.example.parkflowProject',
//   );
// }