import '/components/button/button_widget.dart';
import '/components/quick_action/quick_action_widget.dart';
import '/components/symptom_stat/symptom_stat_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'home_dashboard_widget.dart' show HomeDashboardWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeDashboardModel extends FlutterFlowModel<HomeDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for QuickAction.
  late QuickActionModel quickActionModel1;
  // Model for QuickAction.
  late QuickActionModel quickActionModel2;
  // Model for QuickAction.
  late QuickActionModel quickActionModel3;
  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for SymptomStat.
  late SymptomStatModel symptomStatModel1;
  // Model for SymptomStat.
  late SymptomStatModel symptomStatModel2;
  // Model for SymptomStat.
  late SymptomStatModel symptomStatModel3;
  // Model for Button.
  late ButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    quickActionModel1 = createModel(context, () => QuickActionModel());
    quickActionModel2 = createModel(context, () => QuickActionModel());
    quickActionModel3 = createModel(context, () => QuickActionModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    symptomStatModel1 = createModel(context, () => SymptomStatModel());
    symptomStatModel2 = createModel(context, () => SymptomStatModel());
    symptomStatModel3 = createModel(context, () => SymptomStatModel());
    buttonModel2 = createModel(context, () => ButtonModel());
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
