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

String? getBoolSymptomLabel(List<bool> values) {
  if (values.isEmpty) return 'No data this week';
  final clean = values.whereType<bool>().toList();
  if (clean.isEmpty) return 'No data this week';
  int count = clean.where((v) => v).length;
  int total = clean.length;
  if (count == 0) return 'Not reported this week';
  return '$count of $total days reported';
}
