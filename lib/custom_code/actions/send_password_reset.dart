// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';
import 'package:firebase_auth/firebase_auth.dart'; // <-- ADICIONAR ISSO

Future sendPasswordReset(String email) async {
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  } catch (e) {
    print('Erro ao enviar reset: $e');
  }
}
