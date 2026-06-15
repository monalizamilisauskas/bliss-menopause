import '/components/form_section_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_card_child3_widget.dart' show ProfileCardChild3Widget;
import 'package:flutter/material.dart';

class ProfileCardChild3Model extends FlutterFlowModel<ProfileCardChild3Widget> {
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
