import '/components/button/button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'vitamin_card_widget.dart' show VitaminCardWidget;
import 'package:flutter/material.dart';

class VitaminCardModel extends FlutterFlowModel<VitaminCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    buttonModel.dispose();
  }
}
