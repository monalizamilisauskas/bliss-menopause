import '/components/info_box_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'two_factor_authentication_widget.dart'
    show TwoFactorAuthenticationWidget;
import 'package:flutter/material.dart';

class TwoFactorAuthenticationModel
    extends FlutterFlowModel<TwoFactorAuthenticationWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Switch widget.
  bool? switchValue;
  // Model for InfoBox.
  late InfoBoxModel infoBoxModel;

  @override
  void initState(BuildContext context) {
    infoBoxModel = createModel(context, () => InfoBoxModel());
  }

  @override
  void dispose() {
    infoBoxModel.dispose();
  }
}
