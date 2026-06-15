import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'subscription_planpage_widget.dart' show SubscriptionPlanpageWidget;
import 'package:flutter/material.dart';

class SubscriptionPlanpageModel
    extends FlutterFlowModel<SubscriptionPlanpageWidget> {
  ///  Local state fields for this page.
  /// Controls which plan card is selected
  String selectedPlan = 'complete';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [RevenueCat - Purchase] action in Button widget.
  bool? purchaseResultStarter;
  // Stores action output result for [RevenueCat - Purchase] action in Button widget.
  bool? purchaseResultComplete;
  // Stores action output result for [RevenueCat - Purchase] action in Button widget.
  bool? purchaseResultAnnual;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
