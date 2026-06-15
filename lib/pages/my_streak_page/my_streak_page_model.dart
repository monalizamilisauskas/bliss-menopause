import '/components/milestone_item_widget.dart';
import '/components/stat_column_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'my_streak_page_widget.dart' show MyStreakPageWidget;
import 'package:flutter/material.dart';

class MyStreakPageModel extends FlutterFlowModel<MyStreakPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for StatColumn.
  late StatColumnModel statColumnModel1;
  // Model for StatColumn.
  late StatColumnModel statColumnModel2;
  // Model for StatColumn.
  late StatColumnModel statColumnModel3;
  // Model for MilestoneItem.
  late MilestoneItemModel milestoneItemModel1;
  // Model for MilestoneItem.
  late MilestoneItemModel milestoneItemModel2;
  // Model for MilestoneItem.
  late MilestoneItemModel milestoneItemModel3;
  // Model for MilestoneItem.
  late MilestoneItemModel milestoneItemModel4;

  @override
  void initState(BuildContext context) {
    statColumnModel1 = createModel(context, () => StatColumnModel());
    statColumnModel2 = createModel(context, () => StatColumnModel());
    statColumnModel3 = createModel(context, () => StatColumnModel());
    milestoneItemModel1 = createModel(context, () => MilestoneItemModel());
    milestoneItemModel2 = createModel(context, () => MilestoneItemModel());
    milestoneItemModel3 = createModel(context, () => MilestoneItemModel());
    milestoneItemModel4 = createModel(context, () => MilestoneItemModel());
  }

  @override
  void dispose() {
    statColumnModel1.dispose();
    statColumnModel2.dispose();
    statColumnModel3.dispose();
    milestoneItemModel1.dispose();
    milestoneItemModel2.dispose();
    milestoneItemModel3.dispose();
    milestoneItemModel4.dispose();
  }
}
