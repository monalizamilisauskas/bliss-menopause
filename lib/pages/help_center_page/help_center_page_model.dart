import '/components/faq_card_widget.dart';
import '/components/help_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'help_center_page_widget.dart' show HelpCenterPageWidget;
import 'package:flutter/material.dart';

class HelpCenterPageModel extends FlutterFlowModel<HelpCenterPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HelpItem.
  late HelpItemModel helpItemModel1;
  // Model for HelpItem.
  late HelpItemModel helpItemModel2;
  // Model for HelpItem.
  late HelpItemModel helpItemModel3;
  // Model for HelpItem.
  late HelpItemModel helpItemModel4;
  // Model for HelpItem.
  late HelpItemModel helpItemModel5;
  // Model for HelpItem.
  late HelpItemModel helpItemModel6;
  // Model for HelpItem.
  late HelpItemModel helpItemModel7;
  // Model for HelpItem.
  late HelpItemModel helpItemModel8;
  // Model for HelpItem.
  late HelpItemModel helpItemModel9;
  // Model for HelpItem.
  late HelpItemModel helpItemModel10;
  // Model for FaqCard.
  late FaqCardModel faqCardModel1;
  // Model for FaqCard.
  late FaqCardModel faqCardModel2;
  // Model for FaqCard.
  late FaqCardModel faqCardModel3;

  @override
  void initState(BuildContext context) {
    helpItemModel1 = createModel(context, () => HelpItemModel());
    helpItemModel2 = createModel(context, () => HelpItemModel());
    helpItemModel3 = createModel(context, () => HelpItemModel());
    helpItemModel4 = createModel(context, () => HelpItemModel());
    helpItemModel5 = createModel(context, () => HelpItemModel());
    helpItemModel6 = createModel(context, () => HelpItemModel());
    helpItemModel7 = createModel(context, () => HelpItemModel());
    helpItemModel8 = createModel(context, () => HelpItemModel());
    helpItemModel9 = createModel(context, () => HelpItemModel());
    helpItemModel10 = createModel(context, () => HelpItemModel());
    faqCardModel1 = createModel(context, () => FaqCardModel());
    faqCardModel2 = createModel(context, () => FaqCardModel());
    faqCardModel3 = createModel(context, () => FaqCardModel());
  }

  @override
  void dispose() {
    helpItemModel1.dispose();
    helpItemModel2.dispose();
    helpItemModel3.dispose();
    helpItemModel4.dispose();
    helpItemModel5.dispose();
    helpItemModel6.dispose();
    helpItemModel7.dispose();
    helpItemModel8.dispose();
    helpItemModel9.dispose();
    helpItemModel10.dispose();
    faqCardModel1.dispose();
    faqCardModel2.dispose();
    faqCardModel3.dispose();
  }
}
