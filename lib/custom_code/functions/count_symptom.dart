import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

int? countSymptom(
  List<SymptomLogsRecord> logs,
  String? symptom,
) {
  switch (symptom ?? '') {
    case 'fatigue':
      return logs.where((l) => l.fatigue == true).length;
    case 'headache':
      return logs.where((l) => l.headache == true).length;
    case 'bloating':
      return logs.where((l) => l.bloating == true).length;
    case 'anxiety':
      return logs.where((l) => l.anxiety == true).length;
    case 'nightSweats':
      return logs.where((l) => l.nightSweats == true).length;
    case 'brainFog':
      return logs.where((l) => l.brainFog == true).length;
    default:
      return 0;
  }
}
