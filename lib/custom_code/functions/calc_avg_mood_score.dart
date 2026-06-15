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

String? calcAvgMoodScore(List<String> moodList) {
  if (moodList == null || moodList.isEmpty) return '0.0';

  final scores = {
    'Calm': 10,
    'Low': 4,
    'Anxious': 3,
    'Tired': 5,
  };

  final valid =
      moodList.where((m) => m != null && scores.containsKey(m)).toList();
  if (valid.isEmpty) return '0.0';

  final total = valid.map((m) => scores[m]!).reduce((a, b) => a + b);
  final avg = total / valid.length;
  return avg.toStringAsFixed(1);
}
