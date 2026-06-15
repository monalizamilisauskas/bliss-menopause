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

String? getPieChartPercent(
  double? value,
  double? total,
  String? label,
) {
  if (total == null || total == 0) return '0% $label';
  double safeValue = value ?? 0.0;
  double safeTotal = total!;
  int percent = ((safeValue / safeTotal) * 100).round();
  return '$percent% $label';
}
