import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String getGreeting() {
  final hour = DateTime.now().hour;
  if (hour < 12) {
    return 'Good morning';
  } else if (hour < 18) {
    return 'Good afternoon';
  } else {
    return 'Good evening';
  }
}

String getFirstLetter(String name) {
  if (name.isEmpty) return 'U';
  return name[0].toUpperCase();
}

String getSymptomLabel(int value) {
  if (value <= 33) {
    return 'Low';
  } else if (value <= 66) {
    return 'Moderate';
  } else {
    return 'High';
  }
}

double getHormonPercent(int value) {
  return (value / 100).clamp(0.0, 1.0);
}

int doubleToInt(double value) {
  return value.toInt();
}

String getTimeAgo(DateTime date) {
  final now = DateTime.now();
  final difference = now.difference(date);

  if (difference.inDays > 30) {
    final months = (difference.inDays / 30).floor();
    return '$months month${months > 1 ? 's' : ''} ago';
  } else if (difference.inDays > 0) {
    return '${difference.inDays} day${difference.inDays > 1 ? 's' : ''} ago';
  } else if (difference.inHours > 0) {
    return '${difference.inHours} hour${difference.inHours > 1 ? 's' : ''} ago';
  } else {
    return 'Just now';
  }
}

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

String getPhaseDescription(String phase) {
  switch (phase) {
    case 'Perimenopause':
      return 'Transitional hormonal phase';
    case 'Menopause':
      return 'Natural end of menstrual cycles';
    case 'Post-Menopause':
      return 'After 12 months without periods';
    default:
      return 'Hormonal phase';
  }
}

String getHormonDescription(int value) {
  if (value <= 33) {
    return 'Below optimal range';
  } else if (value <= 66) {
    return 'Within moderate range';
  } else {
    return 'Above normal range';
  }
}
