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

List<String> getTopSymptoms(
  List<SymptomLogsRecord> logs,
  int limit,
) {
  final now = DateTime.now();
  final weekAgo = now.subtract(Duration(days: 7));

  final recentLogs = logs.where((log) {
    final date = log.date;
    return date != null && date.isAfter(weekAgo);
  }).toList();

  final Map<String, int> counts = {
    'Hot Flashes': 0,
    'Night Sweats': 0,
    'Brain Fog': 0,
    'Fatigue': 0,
    'Headache': 0,
    'Bloating': 0,
    'Anxiety': 0,
  };

  for (final log in recentLogs) {
    final hf = log.hotFlashes;
    if (hf != null && hf > 0)
      counts['Hot Flashes'] = counts['Hot Flashes']! + 1;

    final ns = log.nightSweats;
    if (ns != null && ns == true)
      counts['Night Sweats'] = counts['Night Sweats']! + 1;

    final bf = log.brainFog;
    if (bf != null && bf == true)
      counts['Brain Fog'] = counts['Brain Fog']! + 1;

    final ft = log.fatigue;
    if (ft != null && ft == true) counts['Fatigue'] = counts['Fatigue']! + 1;

    final hd = log.headache;
    if (hd != null && hd == true) counts['Headache'] = counts['Headache']! + 1;

    final bl = log.bloating;
    if (bl != null && bl == true) counts['Bloating'] = counts['Bloating']! + 1;

    final ax = log.anxiety;
    if (ax != null && ax == true) counts['Anxiety'] = counts['Anxiety']! + 1;
  }

  final sorted = counts.entries.where((e) => e.value > 0).toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  if (sorted.isEmpty) {
    return ['Track symptoms', 'to see insights', ''];
  }

  return sorted.take(limit).map((e) => e.key).toList();
}
