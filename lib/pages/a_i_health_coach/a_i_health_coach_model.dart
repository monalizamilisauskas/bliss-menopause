import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'a_i_health_coach_widget.dart' show AIHealthCoachWidget;
import 'package:flutter/material.dart';

class AIHealthCoachModel extends FlutterFlowModel<AIHealthCoachWidget> {
  ///  Local state fields for this page.

  bool? isTyping;

  List<String> messages = [];
  void addToMessages(String item) => messages.add(item);
  void removeFromMessages(String item) => messages.remove(item);
  void removeAtIndexFromMessages(int index) => messages.removeAt(index);
  void insertAtIndexInMessages(int index, String item) =>
      messages.insert(index, item);
  void updateMessagesAtIndex(int index, Function(String) updateFn) =>
      messages[index] = updateFn(messages[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
