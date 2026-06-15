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

double? calcBoolPercent(List<bool> values) {
  double calcBoolPercent(List<bool> values) {
    if (values.isEmpty) return 0.0;
    int trueCount = values.where((v) => v == true).length;
    return (trueCount / values.length).clamp(0.0, 1.0);
  }
}
