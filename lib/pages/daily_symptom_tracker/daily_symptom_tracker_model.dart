import '/components/button/button_widget.dart';
import '/components/mood_chip/mood_chip_widget.dart';
import '/components/severity_slider/severity_slider_widget.dart';
import '/components/symptom_selector/symptom_selector_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'daily_symptom_tracker_widget.dart' show DailySymptomTrackerWidget;
import 'package:flutter/material.dart';

class DailySymptomTrackerModel
    extends FlutterFlowModel<DailySymptomTrackerWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MoodChip.
  late MoodChipModel moodChipModel1;
  // Model for MoodChip.
  late MoodChipModel moodChipModel2;
  // Model for MoodChip.
  late MoodChipModel moodChipModel3;
  // Model for MoodChip.
  late MoodChipModel moodChipModel4;
  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for SeveritySlider.
  late SeveritySliderModel severitySliderModel1;
  // Model for SeveritySlider.
  late SeveritySliderModel severitySliderModel2;
  // Model for SeveritySlider.
  late SeveritySliderModel severitySliderModel3;
  // Model for SymptomSelector.
  late SymptomSelectorModel symptomSelectorModel1;
  // Model for SymptomSelector.
  late SymptomSelectorModel symptomSelectorModel2;
  // Model for SymptomSelector.
  late SymptomSelectorModel symptomSelectorModel3;
  // Model for Button.
  late ButtonModel buttonModel2;
  // Model for Button.
  late ButtonModel buttonModel3;

  @override
  void initState(BuildContext context) {
    moodChipModel1 = createModel(context, () => MoodChipModel());
    moodChipModel2 = createModel(context, () => MoodChipModel());
    moodChipModel3 = createModel(context, () => MoodChipModel());
    moodChipModel4 = createModel(context, () => MoodChipModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    severitySliderModel1 = createModel(context, () => SeveritySliderModel());
    severitySliderModel2 = createModel(context, () => SeveritySliderModel());
    severitySliderModel3 = createModel(context, () => SeveritySliderModel());
    symptomSelectorModel1 = createModel(context, () => SymptomSelectorModel());
    symptomSelectorModel2 = createModel(context, () => SymptomSelectorModel());
    symptomSelectorModel3 = createModel(context, () => SymptomSelectorModel());
    buttonModel2 = createModel(context, () => ButtonModel());
    buttonModel3 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    moodChipModel1.dispose();
    moodChipModel2.dispose();
    moodChipModel3.dispose();
    moodChipModel4.dispose();
    buttonModel1.dispose();
    severitySliderModel1.dispose();
    severitySliderModel2.dispose();
    severitySliderModel3.dispose();
    symptomSelectorModel1.dispose();
    symptomSelectorModel2.dispose();
    symptomSelectorModel3.dispose();
    buttonModel2.dispose();
    buttonModel3.dispose();
  }
}
