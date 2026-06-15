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

String? getPrimarySymptom(
  int? hotFlashes,
  bool? fatigue,
  bool? nightSweats,
  bool? brainFog,
  bool? headache,
  bool? bloating,
  bool? anxiety,
) {
  if ((hotFlashes ?? 0) > 0) return 'Hot Flash';
  if (fatigue == true) return 'Fatigue';
  if (nightSweats == true) return 'Night Sweats';
  if (brainFog == true) return 'Brain Fog';
  if (headache == true) return 'Headache';
  if (bloating == true) return 'Bloating';
  if (anxiety == true) return 'Anxiety';
  return 'General Log';
}
