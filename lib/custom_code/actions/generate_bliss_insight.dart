// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String?> generateBlissInsight(
  List<int> hotFlashValues,
  List<bool> nightSweatValues,
  List<bool> fatigueValues,
  int? daysLogged,
) async {
  final hotFlashAvg = hotFlashValues.isEmpty
      ? 0.0
      : hotFlashValues.reduce((a, b) => a + b) / hotFlashValues.length;

  final nightSweatPct = nightSweatValues.isEmpty
      ? 0
      : (nightSweatValues.where((v) => v).length /
              nightSweatValues.length *
              100)
          .round();

  final fatiguePct = fatigueValues.isEmpty
      ? 0
      : (fatigueValues.where((v) => v).length / fatigueValues.length * 100)
          .round();

  final prompt = '''
You are Bliss, a compassionate menopause wellness coach.
Based on this week's symptom data, write a warm, personalized 2-sentence insight.

Data:
- Days logged: $daysLogged
- Hot Flashes average intensity: ${hotFlashAvg.toStringAsFixed(1)} out of 5
- Night Sweats occurred: $nightSweatPct% of days
- Fatigue occurred: $fatiguePct% of days

Write 2 sentences max. Be warm, specific and encouraging.
Respond in English only.
''';

  final response = await http.post(
    Uri.parse('https://api.anthropic.com/v1/messages'),
    headers: {
      'Content-Type': 'application/json',
      'x-api-key':
          'sk-ant-api03-rQ5hLeI4rB4-zCDgLfSoZSPzAe_uA2Y-Az3V9pPjGKcncTkBiKslFT5YF7QD0V0dI9K3SYoSeuJgC_0b2UmnYw-pdOZbAAAA',
      'anthropic-version': '2023-06-01',
    },
    body: jsonEncode({
      'model': 'claude-haiku-4-5-20251001',
      'max_tokens': 150,
      'messages': [
        {'role': 'user', 'content': prompt}
      ],
    }),
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return data['content'][0]['text'] as String;
  }
  return 'Keep tracking your symptoms — your personalized insight will appear soon!';
}
