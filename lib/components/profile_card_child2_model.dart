import '/components/form_section_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'profile_card_child2_widget.dart' show ProfileCardChild2Widget;
import 'package:flutter/material.dart';

class ProfileCardChild2Model extends FlutterFlowModel<ProfileCardChild2Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for FormSectionHeader.
  late FormSectionHeaderModel formSectionHeaderModel;
  // State field(s) for Dropdown widget.
  String? dropdownValue;
  FormFieldController<String>? dropdownValueController;

  @override
  void initState(BuildContext context) {
    formSectionHeaderModel =
        createModel(context, () => FormSectionHeaderModel());
  }

  @override
  void dispose() {
    formSectionHeaderModel.dispose();
  }
}
