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

String? getBlissInsight(
  List<int> hotFlashList,
  List<bool> fatigueList,
  List<String> moodList,
) {
  int hotFlashes = hotFlashList.where((e) => e > 0).length;
  int fatigue = fatigueList.where((e) => e == true).length;
  int mood = moodList
      .where((e) => e == 'sad' || e == 'anxious' || e == 'irritable')
      .length;

  if (hotFlashes >= fatigue && hotFlashes >= mood) {
    return 'Your hot flashes seem to peak in frequency. Try staying hydrated and avoiding caffeine to help reduce episodes.';
  } else if (fatigue >= hotFlashes && fatigue >= mood) {
    return 'Fatigue is your most frequent symptom. Prioritize 7-8 hours of sleep and consider light exercise in the morning.';
  } else if (mood >= hotFlashes && mood >= fatigue) {
    return 'Your mood has been affected recently. Mindfulness exercises and a consistent daily routine can help stabilize your emotional wellbeing.';
  } else {
    return 'Keep tracking your symptoms daily to unlock personalized insights from Bliss Coach.';
  }
}
