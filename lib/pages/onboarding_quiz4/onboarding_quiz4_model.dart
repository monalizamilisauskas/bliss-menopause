import '/components/button_skip/button_skip_widget.dart';
import '/components/progress_step/progress_step_widget.dart';
import '/components/quiz_option/quiz_option_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'onboarding_quiz4_widget.dart' show OnboardingQuiz4Widget;
import 'package:flutter/material.dart';

class OnboardingQuiz4Model extends FlutterFlowModel<OnboardingQuiz4Widget> {
  ///  Local state fields for this page.

  String? selectedGoal;

  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late ButtonSkipModel buttonModel1;
  // Model for ProgressStep.
  late ProgressStepModel progressStepModel1;
  // Model for ProgressStep.
  late ProgressStepModel progressStepModel2;
  // Model for ProgressStep.
  late ProgressStepModel progressStepModel3;
  // Model for ProgressStep.
  late ProgressStepModel progressStepModel4;
  // Model for QuizOption1.
  late QuizOptionModel quizOption1Model1;
  // Model for QuizOption1.
  late QuizOptionModel quizOption1Model2;
  // Model for QuizOption1.
  late QuizOptionModel quizOption1Model3;
  // Model for QuizOption1.
  late QuizOptionModel quizOption1Model4;
  // Model for Button.
  late ButtonSkipModel buttonModel2;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => ButtonSkipModel());
    progressStepModel1 = createModel(context, () => ProgressStepModel());
    progressStepModel2 = createModel(context, () => ProgressStepModel());
    progressStepModel3 = createModel(context, () => ProgressStepModel());
    progressStepModel4 = createModel(context, () => ProgressStepModel());
    quizOption1Model1 = createModel(context, () => QuizOptionModel());
    quizOption1Model2 = createModel(context, () => QuizOptionModel());
    quizOption1Model3 = createModel(context, () => QuizOptionModel());
    quizOption1Model4 = createModel(context, () => QuizOptionModel());
    buttonModel2 = createModel(context, () => ButtonSkipModel());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    progressStepModel1.dispose();
    progressStepModel2.dispose();
    progressStepModel3.dispose();
    progressStepModel4.dispose();
    quizOption1Model1.dispose();
    quizOption1Model2.dispose();
    quizOption1Model3.dispose();
    quizOption1Model4.dispose();
    buttonModel2.dispose();
  }
}
