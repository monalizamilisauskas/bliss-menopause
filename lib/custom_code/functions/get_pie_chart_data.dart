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

List<double> getPieChartData(
  List<int> hotFlashList,
  List<bool> fatigueList,
  List<String> moodList,
) {
  double hotFlashes = hotFlashList.where((e) => e > 0).length.toDouble();
  double fatigue = fatigueList.where((e) => e == true).length.toDouble();
  double mood = moodList
      .where((e) => e == 'sad' || e == 'anxious' || e == 'irritable')
      .length
      .toDouble();
  double total = hotFlashList.length.toDouble();
  double other = (total - hotFlashes - fatigue - mood).clamp(0, total);
  return [hotFlashes, fatigue, mood, other];
}
