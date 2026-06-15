import '/components/form_section_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_card_child_widget.dart' show ProfileCardChildWidget;
import 'package:flutter/material.dart';

class ProfileCardChildModel extends FlutterFlowModel<ProfileCardChildWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for FormSectionHeader.
  late FormSectionHeaderModel formSectionHeaderModel;

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
