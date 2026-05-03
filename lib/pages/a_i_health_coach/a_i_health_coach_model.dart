import '/backend/ai_agents/ai_agent.dart';
import '/components/coach_message/coach_message_widget.dart';
import '/components/suggestion_chip/suggestion_chip_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'a_i_health_coach_widget.dart' show AIHealthCoachWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class AIHealthCoachModel extends FlutterFlowModel<AIHealthCoachWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CoachMessage.
  late CoachMessageModel coachMessageModel1;
  // Model for CoachMessage.
  late CoachMessageModel coachMessageModel2;
  // Model for CoachMessage.
  late CoachMessageModel coachMessageModel3;
  // Model for SuggestionChip.
  late SuggestionChipModel suggestionChipModel1;
  // Model for SuggestionChip.
  late SuggestionChipModel suggestionChipModel2;
  // Model for SuggestionChip.
  late SuggestionChipModel suggestionChipModel3;
  // Model for TextField.
  late TextFieldModel textFieldModel;
  // Stores action output result for [AI Agent - Send Message to Bliss Coach] action in Icon widget.
  String? blissResponse;

  @override
  void initState(BuildContext context) {
    coachMessageModel1 = createModel(context, () => CoachMessageModel());
    coachMessageModel2 = createModel(context, () => CoachMessageModel());
    coachMessageModel3 = createModel(context, () => CoachMessageModel());
    suggestionChipModel1 = createModel(context, () => SuggestionChipModel());
    suggestionChipModel2 = createModel(context, () => SuggestionChipModel());
    suggestionChipModel3 = createModel(context, () => SuggestionChipModel());
    textFieldModel = createModel(context, () => TextFieldModel());
  }

  @override
  void dispose() {
    coachMessageModel1.dispose();
    coachMessageModel2.dispose();
    coachMessageModel3.dispose();
    suggestionChipModel1.dispose();
    suggestionChipModel2.dispose();
    suggestionChipModel3.dispose();
    textFieldModel.dispose();
  }
}
