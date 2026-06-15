import '/components/daily_bar_widget.dart';
import '/components/log_entry_widget.dart';
import '/components/stat_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'symptom_detail_page_widget.dart' show SymptomDetailPageWidget;
import 'package:flutter/material.dart';

class SymptomDetailPageModel extends FlutterFlowModel<SymptomDetailPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for StatItem.
  late StatItemModel statItemModel1;
  // Model for StatItem.
  late StatItemModel statItemModel2;
  // Model for StatItem.
  late StatItemModel statItemModel3;
  // Model for DailyBar.
  late DailyBarModel dailyBarModel1;
  // Model for DailyBar.
  late DailyBarModel dailyBarModel2;
  // Model for DailyBar.
  late DailyBarModel dailyBarModel3;
  // Model for DailyBar.
  late DailyBarModel dailyBarModel4;
  // Model for DailyBar.
  late DailyBarModel dailyBarModel5;
  // Model for DailyBar.
  late DailyBarModel dailyBarModel6;
  // Model for DailyBar.
  late DailyBarModel dailyBarModel7;
  // Model for LogEntry.
  late LogEntryModel logEntryModel1;
  // Model for LogEntry.
  late LogEntryModel logEntryModel2;
  // Model for LogEntry.
  late LogEntryModel logEntryModel3;

  @override
  void initState(BuildContext context) {
    statItemModel1 = createModel(context, () => StatItemModel());
    statItemModel2 = createModel(context, () => StatItemModel());
    statItemModel3 = createModel(context, () => StatItemModel());
    dailyBarModel1 = createModel(context, () => DailyBarModel());
    dailyBarModel2 = createModel(context, () => DailyBarModel());
    dailyBarModel3 = createModel(context, () => DailyBarModel());
    dailyBarModel4 = createModel(context, () => DailyBarModel());
    dailyBarModel5 = createModel(context, () => DailyBarModel());
    dailyBarModel6 = createModel(context, () => DailyBarModel());
    dailyBarModel7 = createModel(context, () => DailyBarModel());
    logEntryModel1 = createModel(context, () => LogEntryModel());
    logEntryModel2 = createModel(context, () => LogEntryModel());
    logEntryModel3 = createModel(context, () => LogEntryModel());
  }

  @override
  void dispose() {
    statItemModel1.dispose();
    statItemModel2.dispose();
    statItemModel3.dispose();
    dailyBarModel1.dispose();
    dailyBarModel2.dispose();
    dailyBarModel3.dispose();
    dailyBarModel4.dispose();
    dailyBarModel5.dispose();
    dailyBarModel6.dispose();
    dailyBarModel7.dispose();
    logEntryModel1.dispose();
    logEntryModel2.dispose();
    logEntryModel3.dispose();
  }
}
