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

String getLastUpdatedText(DateTime? date) {
  if (date == null) return 'Not yet updated';

  final now = DateTime.now();
  final difference = now.difference(date);

  if (difference.inDays > 30) {
    final months = (difference.inDays / 30).floor();
    return 'Last Updated: $months month${months > 1 ? 's' : ''} ago';
  } else if (difference.inDays > 0) {
    return 'Last Updated: ${difference.inDays} day${difference.inDays > 1 ? 's' : ''} ago';
  } else if (difference.inHours > 0) {
    return 'Last Updated: ${difference.inHours} hour${difference.inHours > 1 ? 's' : ''} ago';
  } else {
    return 'Last Updated: Just now';
  }
}
