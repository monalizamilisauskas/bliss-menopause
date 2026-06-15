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

String? calcBoolPercentText(List<bool> values) {
  if (values.isEmpty) return '0%';
  final clean = values.whereType<bool>().toList();
  if (clean.isEmpty) return '0%';
  double percent =
      (clean.where((v) => v).length / clean.length * 100).clamp(0.0, 100.0);
  return '${percent.toStringAsFixed(0)}%';
}
