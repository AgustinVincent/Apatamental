import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDf_dtImdt011FI_S3JKrAEomkWdM1eU6g",
            authDomain: "apartment-manager-z7ubiq.firebaseapp.com",
            projectId: "apartment-manager-z7ubiq",
            storageBucket: "apartment-manager-z7ubiq.appspot.com",
            messagingSenderId: "631308384191",
            appId: "1:631308384191:web:af3eeacae2a5306784930a"));
  } else {
    await Firebase.initializeApp();
  }
}
