import '/components/button/button_widget.dart';
import '/components/mood_chip/mood_chip_widget.dart';
import '/components/severity_slider/severity_slider_widget.dart';
import '/components/symptom_selector/symptom_selector_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'daily_symptom_tracker_widget.dart' show DailySymptomTrackerWidget;
import 'package:flutter/material.dart';

class DailySymptomTrackerModel
    extends FlutterFlowModel<DailySymptomTrackerWidget> {
  ///  Local state fields for this page.

  bool fatigue = true;

  bool headache = true;

  bool bloating = true;

  bool anxiety = true;

  bool nightSweats = true;

  bool brainFog = true;

  bool jointPain = true;

  int? hotFlashesValue;

  int? sleepQualityValue;

  int? energyLevelValue;

  ///  State fields for stateful widgets in this page.

  // Model for MoodCalm.
  late MoodChipModel moodCalmModel;
  // Model for MoodLow.
  late MoodChipModel moodLowModel;
  // Model for MoodAnxious.
  late MoodChipModel moodAnxiousModel;
  // Model for MoodTired.
  late MoodChipModel moodTiredModel;
  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for Intensity.
  late SeveritySliderModel intensityModel;
  // Model for SleepQuality.
  late SeveritySliderModel sleepQualityModel;
  // Model for EnergyLevel.
  late SeveritySliderModel energyLevelModel;
  // Model for NightSweats.
  late SymptomSelectorModel nightSweatsModel;
  // Model for BrainFog.
  late SymptomSelectorModel brainFogModel;
  // Model for JointPain.
  late SymptomSelectorModel jointPainModel;
  // Model for Fatigue.
  late SymptomSelectorModel fatigueModel;
  // Model for Bloating.
  late SymptomSelectorModel bloatingModel;
  // Model for Anxiety.
  late SymptomSelectorModel anxietyModel;
  // Model for Headache.
  late SymptomSelectorModel headacheModel;
  // Model for Button.
  late ButtonModel buttonModel2;
  // Model for Button.
  late ButtonModel buttonModel3;

  @override
  void initState(BuildContext context) {
    moodCalmModel = createModel(context, () => MoodChipModel());
    moodLowModel = createModel(context, () => MoodChipModel());
    moodAnxiousModel = createModel(context, () => MoodChipModel());
    moodTiredModel = createModel(context, () => MoodChipModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    intensityModel = createModel(context, () => SeveritySliderModel());
    sleepQualityModel = createModel(context, () => SeveritySliderModel());
    energyLevelModel = createModel(context, () => SeveritySliderModel());
    nightSweatsModel = createModel(context, () => SymptomSelectorModel());
    brainFogModel = createModel(context, () => SymptomSelectorModel());
    jointPainModel = createModel(context, () => SymptomSelectorModel());
    fatigueModel = createModel(context, () => SymptomSelectorModel());
    bloatingModel = createModel(context, () => SymptomSelectorModel());
    anxietyModel = createModel(context, () => SymptomSelectorModel());
    headacheModel = createModel(context, () => SymptomSelectorModel());
    buttonModel2 = createModel(context, () => ButtonModel());
    buttonModel3 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    moodCalmModel.dispose();
    moodLowModel.dispose();
    moodAnxiousModel.dispose();
    moodTiredModel.dispose();
    buttonModel1.dispose();
    intensityModel.dispose();
    sleepQualityModel.dispose();
    energyLevelModel.dispose();
    nightSweatsModel.dispose();
    brainFogModel.dispose();
    jointPainModel.dispose();
    fatigueModel.dispose();
    bloatingModel.dispose();
    anxietyModel.dispose();
    headacheModel.dispose();
    buttonModel2.dispose();
    buttonModel3.dispose();
  }
}
