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

String? calcAvgSleepQuality(List<int> sleepQualityList) {
  if (sleepQualityList == null || sleepQualityList.isEmpty) return '0%';
  final valid = sleepQualityList.where((v) => v != null).toList();
  if (valid.isEmpty) return '0%';
  final avg = valid.reduce((a, b) => a + b) / valid.length;
  return '${avg.round()}%';
}
