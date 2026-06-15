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

String? calcWeekComparison(List<int> values) {
  if (values.isEmpty) return '—';
  final clean = values.whereType<int>().toList();
  if (clean.isEmpty) return '—';
  double avg = clean.reduce((a, b) => a + b) / clean.length;
// Simula comparação: se média > 2.5 considera alta, mostra tendência
  if (avg >= 4.0) return '↑ High';
  if (avg >= 2.5) return '↑ Mod';
  if (avg >= 1.0) return '↓ Low';
  return '— None';
}
