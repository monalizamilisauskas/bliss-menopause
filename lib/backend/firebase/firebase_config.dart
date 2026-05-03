import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCn_pxBJktZuGxgeGyPDNSIq8W5k7vSF9g",
            authDomain: "bliss-menopause.firebaseapp.com",
            projectId: "bliss-menopause",
            storageBucket: "bliss-menopause.firebasestorage.app",
            messagingSenderId: "1096509774968",
            appId: "1:1096509774968:web:9634d3eed70d0a2520618d",
            measurementId: "G-9JP0P82GJN"));
  } else {
    await Firebase.initializeApp();
  }
}
