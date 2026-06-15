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

double? calcBarWidthPx(List<int> values) {
  if (values.isEmpty) return 0.0;
  final cleanValues = values.whereType<int>().toList();
  if (cleanValues.isEmpty) return 0.0;
  double avg = cleanValues.reduce((a, b) => a + b) / cleanValues.length;
  double percent = (avg / 5.0).clamp(0.0, 1.0);
  return 289 * percent;
}
