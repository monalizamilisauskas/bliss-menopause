import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'update_hormonal_profile_widget.dart' show UpdateHormonalProfileWidget;
import 'package:flutter/material.dart';

class UpdateHormonalProfileModel
    extends FlutterFlowModel<UpdateHormonalProfileWidget> {
  ///  Local state fields for this component.

  int estrogenValue = 50;

  int progesteroneValue = 50;

  int fshValue = 50;

  String currentPhaseValue = 'Perimenopause';

  ///  State fields for stateful widgets in this component.

  // State field(s) for Slider widget.
  double? sliderValue1;
  // State field(s) for Slider widget.
  double? sliderValue2;
  // State field(s) for Slider widget.
  double? sliderValue3;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
