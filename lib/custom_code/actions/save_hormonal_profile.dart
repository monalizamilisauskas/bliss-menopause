// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

/// MODIFY CODE ONLY BELOW THIS LINE

Future saveHormonalProfile(
  int estrogenLevel,
  int progesteroneLevel,
  int fshLevel,
  String currentPhase,
) async {
  await currentUserReference!.update(createUsersRecordData(
    estrogenLevel: estrogenLevel,
    progesteroneLevel: progesteroneLevel,
    fshLevel: fshLevel,
    currentPhase: currentPhase,
    hormonalProfileUpdatedAt: DateTime.now(),
  ));
}

/// MODIFY CODE ONLY ABOVE THIS LINE
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
