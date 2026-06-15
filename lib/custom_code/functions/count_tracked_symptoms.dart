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

String? countTrackedSymptoms(
  List<int> hotFlashes,
  List<bool> nightSweats,
  List<bool> fatigue,
) {
  int count = 0;
  if (hotFlashes.any((v) => v > 0)) count++;
  if (nightSweats.any((v) => v == true)) count++;
  if (fatigue.any((v) => v == true)) count++;
  return count.toString();
}
