import '/components/button_skip/button_skip_widget.dart';
import '/components/quick_action/quick_action_widget.dart';
import '/components/symptom_stat/symptom_stat_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_dashboard_widget.dart' show HomeDashboardWidget;
import 'package:flutter/material.dart';

class HomeDashboardModel extends FlutterFlowModel<HomeDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for QuickAction.
  late QuickActionModel quickActionModel1;
  // Model for QuickAction.
  late QuickActionModel quickActionModel2;
  // Model for QuickAction.
  late QuickActionModel quickActionModel3;
  // Model for Button.
  late ButtonSkipModel buttonModel1;
  // Model for SymptomStat.
  late SymptomStatModel symptomStatModel1;
  // Model for SymptomStat.
  late SymptomStatModel symptomStatModel2;
  // Model for SymptomStat.
  late SymptomStatModel symptomStatModel3;
  // Model for Button.
  late ButtonSkipModel buttonModel2;

  @override
  void initState(BuildContext context) {
    quickActionModel1 = createModel(context, () => QuickActionModel());
    quickActionModel2 = createModel(context, () => QuickActionModel());
    quickActionModel3 = createModel(context, () => QuickActionModel());
    buttonModel1 = createModel(context, () => ButtonSkipModel());
    symptomStatModel1 = createModel(context, () => SymptomStatModel());
    symptomStatModel2 = createModel(context, () => SymptomStatModel());
    symptomStatModel3 = createModel(context, () => SymptomStatModel());
    buttonModel2 = createModel(context, () => ButtonSkipModel());
  }

  @override
  void dispose() {
    quickActionModel1.dispose();
    quickActionModel2.dispose();
    quickActionModel3.dispose();
    buttonModel1.dispose();
    symptomStatModel1.dispose();
    symptomStatModel2.dispose();
    symptomStatModel3.dispose();
    buttonModel2.dispose();
  }
}
