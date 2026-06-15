import '/components/symptom_item_widget.dart';
import '/components/trend_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'last_week_page_widget.dart' show LastWeekPageWidget;
import 'package:flutter/material.dart';

class LastWeekPageModel extends FlutterFlowModel<LastWeekPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SymptomItem.
  late SymptomItemModel symptomItemModel1;
  // Model for SymptomItem.
  late SymptomItemModel symptomItemModel2;
  // Model for SymptomItem.
  late SymptomItemModel symptomItemModel3;
  // Model for TrendRow.
  late TrendRowModel trendRowModel1;
  // Model for TrendRow.
  late TrendRowModel trendRowModel2;
  // Model for TrendRow.
  late TrendRowModel trendRowModel3;

  @override
  void initState(BuildContext context) {
    symptomItemModel1 = createModel(context, () => SymptomItemModel());
    symptomItemModel2 = createModel(context, () => SymptomItemModel());
    symptomItemModel3 = createModel(context, () => SymptomItemModel());
    trendRowModel1 = createModel(context, () => TrendRowModel());
    trendRowModel2 = createModel(context, () => TrendRowModel());
    trendRowModel3 = createModel(context, () => TrendRowModel());
  }

  @override
  void dispose() {
    symptomItemModel1.dispose();
    symptomItemModel2.dispose();
    symptomItemModel3.dispose();
    trendRowModel1.dispose();
    trendRowModel2.dispose();
    trendRowModel3.dispose();
  }
}
