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

String? getHotFlashLabel(List<int> values) {
  if (values.isEmpty) return 'No data this week';
  final clean = values.whereType<int>().toList();
  if (clean.isEmpty) return 'No data this week';
  double avg = clean.reduce((a, b) => a + b) / clean.length;
  if (avg >= 4) return 'Avg ${avg.toStringAsFixed(0)}x per day — severe';
  if (avg >= 2) return 'Avg ${avg.toStringAsFixed(0)}x per day';
  return 'Avg ${avg.toStringAsFixed(0)}x per day — mild';
}
