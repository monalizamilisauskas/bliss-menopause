import '/components/button/button_widget.dart';
import '/components/symptom_log_item/symptom_log_item_widget.dart';
import '/components/trend_stat_card/trend_stat_card_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'symptom_trends_widget.dart' show SymptomTrendsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SymptomTrendsModel extends FlutterFlowModel<SymptomTrendsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TrendStatCard.
  late TrendStatCardModel trendStatCardModel1;
  // Model for TrendStatCard.
  late TrendStatCardModel trendStatCardModel2;
  // Model for Button.
  late ButtonModel buttonModel;
  // Model for SymptomLogItem.
  late SymptomLogItemModel symptomLogItemModel1;
  // Model for SymptomLogItem.
  late SymptomLogItemModel symptomLogItemModel2;
  // Model for SymptomLogItem.
  late SymptomLogItemModel symptomLogItemModel3;

  @override
  void initState(BuildContext context) {
    trendStatCardModel1 = createModel(context, () => TrendStatCardModel());
    trendStatCardModel2 = createModel(context, () => TrendStatCardModel());
    buttonModel = createModel(context, () => ButtonModel());
    symptomLogItemModel1 = createModel(context, () => SymptomLogItemModel());
    symptomLogItemModel2 = createModel(context, () => SymptomLogItemModel());
    symptomLogItemModel3 = createModel(context, () => SymptomLogItemModel());
  }

  @override
  void dispose() {
    trendStatCardModel1.dispose();
    trendStatCardModel2.dispose();
    buttonModel.dispose();
    symptomLogItemModel1.dispose();
    symptomLogItemModel2.dispose();
    symptomLogItemModel3.dispose();
  }
}
