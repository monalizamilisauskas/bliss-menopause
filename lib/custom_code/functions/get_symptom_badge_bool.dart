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

String? getSymptomBadgeBool(List<bool> values) {
  if (values.isEmpty) return 'Low';
  final clean = values.whereType<bool>().toList();
  if (clean.isEmpty) return 'Low';
  double percent =
      (clean.where((v) => v).length / clean.length).clamp(0.0, 1.0);
  if (percent >= 0.6) return 'High';
  if (percent >= 0.3) return 'Moderate';
  return 'Low';
}
