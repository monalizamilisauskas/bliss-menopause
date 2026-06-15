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

int countEnergyLevel(
  List<SymptomLogsRecord> logs,
  String level,
) {
  switch (level) {
    case 'high':
      return logs.where((l) => l.energyLevel >= 7).length;
    case 'medium':
      return logs.where((l) => l.energyLevel >= 4 && l.energyLevel < 7).length;
    case 'low':
      return logs.where((l) => l.energyLevel < 4).length;
    default:
      return 0;
  }
}
