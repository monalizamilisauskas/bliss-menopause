import '/components/comparison_row_widget.dart';
import '/components/header_icon_box_widget.dart';
import '/components/week_stat_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'report_page_widget.dart' show ReportPageWidget;
import 'package:flutter/material.dart';

class ReportPageModel extends FlutterFlowModel<ReportPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderIconBox.
  late HeaderIconBoxModel headerIconBoxModel1;
  // Model for WeekStat.
  late WeekStatModel weekStatModel1;
  // Model for WeekStat.
  late WeekStatModel weekStatModel2;
  // Model for WeekStat.
  late WeekStatModel weekStatModel3;
  // Model for WeekStat.
  late WeekStatModel weekStatModel4;
  // Model for HeaderIconBox.
  late HeaderIconBoxModel headerIconBoxModel2;
  // Model for HeaderIconBox.
  late HeaderIconBoxModel headerIconBoxModel3;
  // Model for ComparisonRow.
  late ComparisonRowModel comparisonRowModel1;
  // Model for ComparisonRow.
  late ComparisonRowModel comparisonRowModel2;
  // Model for ComparisonRow.
  late ComparisonRowModel comparisonRowModel3;

  @override
  void initState(BuildContext context) {
    headerIconBoxModel1 = createModel(context, () => HeaderIconBoxModel());
    weekStatModel1 = createModel(context, () => WeekStatModel());
    weekStatModel2 = createModel(context, () => WeekStatModel());
    weekStatModel3 = createModel(context, () => WeekStatModel());
    weekStatModel4 = createModel(context, () => WeekStatModel());
    headerIconBoxModel2 = createModel(context, () => HeaderIconBoxModel());
    headerIconBoxModel3 = createModel(context, () => HeaderIconBoxModel());
    comparisonRowModel1 = createModel(context, () => ComparisonRowModel());
    comparisonRowModel2 = createModel(context, () => ComparisonRowModel());
    comparisonRowModel3 = createModel(context, () => ComparisonRowModel());
  }

  @override
  void dispose() {
    headerIconBoxModel1.dispose();
    weekStatModel1.dispose();
    weekStatModel2.dispose();
    weekStatModel3.dispose();
    weekStatModel4.dispose();
    headerIconBoxModel2.dispose();
    headerIconBoxModel3.dispose();
    comparisonRowModel1.dispose();
    comparisonRowModel2.dispose();
    comparisonRowModel3.dispose();
  }
}
