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

String? getMotivationalQuote() {
  final quotes = [
    'Every day you log is a step toward understanding your body. Amazing! 💛',
    'You are doing incredible work. Keep going! 🌸',
    'Small steps every day lead to big changes. You\'ve got this! ✨',
    'Your body tells a story. Thank you for listening to it. 🌿',
    'Consistency is self-love in action. Keep it up! 💪',
    'Every log brings you closer to feeling your best. 🌺',
    'You show up for yourself every day. That\'s powerful! 🔥',
  ];
  final random = math.Random();
  return quotes[random.nextInt(quotes.length)];
}
