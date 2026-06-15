import '/components/button_skip/button_skip_widget.dart';
import '/components/category_chip/category_chip_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/components/wellness_card/wellness_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'wellness_hub_widget.dart' show WellnessHubWidget;
import 'package:flutter/material.dart';

class WellnessHubModel extends FlutterFlowModel<WellnessHubWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextFieldModel textFieldModel;
  // Model for CategoryChip.
  late CategoryChipModel categoryChipModel1;
  // Model for CategoryChip.
  late CategoryChipModel categoryChipModel2;
  // Model for CategoryChip.
  late CategoryChipModel categoryChipModel3;
  // Model for CategoryChip.
  late CategoryChipModel categoryChipModel4;
  // Model for Button.
  late ButtonSkipModel buttonModel1;
  // Model for WellnessCard.
  late WellnessCardModel wellnessCardModel1;
  // Model for WellnessCard.
  late WellnessCardModel wellnessCardModel2;
  // Model for WellnessCard.
  late WellnessCardModel wellnessCardModel3;
  // Model for Button.
  late ButtonSkipModel buttonModel2;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextFieldModel());
    categoryChipModel1 = createModel(context, () => CategoryChipModel());
    categoryChipModel2 = createModel(context, () => CategoryChipModel());
    categoryChipModel3 = createModel(context, () => CategoryChipModel());
    categoryChipModel4 = createModel(context, () => CategoryChipModel());
    buttonModel1 = createModel(context, () => ButtonSkipModel());
    wellnessCardModel1 = createModel(context, () => WellnessCardModel());
    wellnessCardModel2 = createModel(context, () => WellnessCardModel());
    wellnessCardModel3 = createModel(context, () => WellnessCardModel());
    buttonModel2 = createModel(context, () => ButtonSkipModel());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    categoryChipModel1.dispose();
    categoryChipModel2.dispose();
    categoryChipModel3.dispose();
    categoryChipModel4.dispose();
    buttonModel1.dispose();
    wellnessCardModel1.dispose();
    wellnessCardModel2.dispose();
    wellnessCardModel3.dispose();
    buttonModel2.dispose();
  }
}
