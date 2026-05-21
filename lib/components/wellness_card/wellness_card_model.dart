import '/components/button_skip/button_skip_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'wellness_card_widget.dart' show WellnessCardWidget;
import 'package:flutter/material.dart';

class WellnessCardModel extends FlutterFlowModel<WellnessCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late ButtonSkipModel buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => ButtonSkipModel());
  }

  @override
  void dispose() {
    buttonModel.dispose();
  }
}
