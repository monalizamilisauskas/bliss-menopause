import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'weekly_insight_page_widget.dart' show WeeklyInsightPageWidget;
import 'package:flutter/material.dart';

class WeeklyInsightPageModel extends FlutterFlowModel<WeeklyInsightPageWidget> {
  ///  Local state fields for this page.

  List<int> weekHotFlashes = [];
  void addToWeekHotFlashes(int item) => weekHotFlashes.add(item);
  void removeFromWeekHotFlashes(int item) => weekHotFlashes.remove(item);
  void removeAtIndexFromWeekHotFlashes(int index) =>
      weekHotFlashes.removeAt(index);
  void insertAtIndexInWeekHotFlashes(int index, int item) =>
      weekHotFlashes.insert(index, item);
  void updateWeekHotFlashesAtIndex(int index, Function(int) updateFn) =>
      weekHotFlashes[index] = updateFn(weekHotFlashes[index]);

  List<bool> weekNightSweats = [];
  void addToWeekNightSweats(bool item) => weekNightSweats.add(item);
  void removeFromWeekNightSweats(bool item) => weekNightSweats.remove(item);
  void removeAtIndexFromWeekNightSweats(int index) =>
      weekNightSweats.removeAt(index);
  void insertAtIndexInWeekNightSweats(int index, bool item) =>
      weekNightSweats.insert(index, item);
  void updateWeekNightSweatsAtIndex(int index, Function(bool) updateFn) =>
      weekNightSweats[index] = updateFn(weekNightSweats[index]);

  List<bool> weekFatigue = [];
  void addToWeekFatigue(bool item) => weekFatigue.add(item);
  void removeFromWeekFatigue(bool item) => weekFatigue.remove(item);
  void removeAtIndexFromWeekFatigue(int index) => weekFatigue.removeAt(index);
  void insertAtIndexInWeekFatigue(int index, bool item) =>
      weekFatigue.insert(index, item);
  void updateWeekFatigueAtIndex(int index, Function(bool) updateFn) =>
      weekFatigue[index] = updateFn(weekFatigue[index]);

  int? weekDaysLogged;

  String blissInsightText = 'Tracking your symptoms this week...';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
