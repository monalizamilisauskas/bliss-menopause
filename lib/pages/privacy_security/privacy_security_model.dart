import '/components/security_item2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'privacy_security_widget.dart' show PrivacySecurityWidget;
import 'package:flutter/material.dart';

class PrivacySecurityModel extends FlutterFlowModel<PrivacySecurityWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SecurityItem.
  late SecurityItem2Model securityItemModel1;
  // Model for SecurityItem.
  late SecurityItem2Model securityItemModel2;
  // Model for SecurityItem.
  late SecurityItem2Model securityItemModel3;
  // Model for SecurityItem.
  late SecurityItem2Model securityItemModel4;
  // Model for SecurityItem.
  late SecurityItem2Model securityItemModel5;
  // Model for SecurityItem.
  late SecurityItem2Model securityItemModel6;
  // Model for SecurityItem.
  late SecurityItem2Model securityItemModel7;
  // Model for SecurityItem.
  late SecurityItem2Model securityItemModel8;

  @override
  void initState(BuildContext context) {
    securityItemModel1 = createModel(context, () => SecurityItem2Model());
    securityItemModel2 = createModel(context, () => SecurityItem2Model());
    securityItemModel3 = createModel(context, () => SecurityItem2Model());
    securityItemModel4 = createModel(context, () => SecurityItem2Model());
    securityItemModel5 = createModel(context, () => SecurityItem2Model());
    securityItemModel6 = createModel(context, () => SecurityItem2Model());
    securityItemModel7 = createModel(context, () => SecurityItem2Model());
    securityItemModel8 = createModel(context, () => SecurityItem2Model());
  }

  @override
  void dispose() {
    securityItemModel1.dispose();
    securityItemModel2.dispose();
    securityItemModel3.dispose();
    securityItemModel4.dispose();
    securityItemModel5.dispose();
    securityItemModel6.dispose();
    securityItemModel7.dispose();
    securityItemModel8.dispose();
  }
}
