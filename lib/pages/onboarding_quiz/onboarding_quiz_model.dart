import '/components/button/button_widget.dart';
import '/components/progress_step/progress_step_widget.dart';
import '/components/quiz_option/quiz_option_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'onboarding_quiz_widget.dart' show OnboardingQuizWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class OnboardingQuizModel extends FlutterFlowModel<OnboardingQuizWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for ProgressStep.
  late ProgressStepModel progressStepModel1;
  // Model for ProgressStep.
  late ProgressStepModel progressStepModel2;
  // Model for ProgressStep.
  late ProgressStepModel progressStepModel3;
  // Model for ProgressStep.
  late ProgressStepModel progressStepModel4;
  // Model for QuizOption.
  late QuizOptionModel quizOptionModel1;
  // Model for QuizOption.
  late QuizOptionModel quizOptionModel2;
  // Model for QuizOption.
  late QuizOptionModel quizOptionModel3;
  // Model for QuizOption.
  late QuizOptionModel quizOptionModel4;
  // Model for Button.
  late ButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => ButtonModel());
    progressStepModel1 = createModel(context, () => ProgressStepModel());
    progressStepModel2 = createModel(context, () => ProgressStepModel());
    progressStepModel3 = createModel(context, () => ProgressStepModel());
    progressStepModel4 = createModel(context, () => ProgressStepModel());
    quizOptionModel1 = createModel(context, () => QuizOptionModel());
    quizOptionModel2 = createModel(context, () => QuizOptionModel());
    quizOptionModel3 = createModel(context, () => QuizOptionModel());
    quizOptionModel4 = createModel(context, () => QuizOptionModel());
    buttonModel2 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    progressStepModel1.dispose();
    progressStepModel2.dispose();
    progressStepModel3.dispose();
    progressStepModel4.dispose();
    quizOptionModel1.dispose();
    quizOptionModel2.dispose();
    quizOptionModel3.dispose();
    quizOptionModel4.dispose();
    buttonModel2.dispose();
  }
}
