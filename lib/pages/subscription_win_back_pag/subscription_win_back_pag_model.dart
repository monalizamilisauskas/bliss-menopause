import '/components/offer_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'subscription_win_back_pag_widget.dart'
    show SubscriptionWinBackPagWidget;
import 'package:flutter/material.dart';

class SubscriptionWinBackPagModel
    extends FlutterFlowModel<SubscriptionWinBackPagWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for OfferCard.
  late OfferCardModel offerCardModel1;
  // Model for OfferCard.
  late OfferCardModel offerCardModel2;
  // Model for OfferCard.
  late OfferCardModel offerCardModel3;

  @override
  void initState(BuildContext context) {
    offerCardModel1 = createModel(context, () => OfferCardModel());
    offerCardModel2 = createModel(context, () => OfferCardModel());
    offerCardModel3 = createModel(context, () => OfferCardModel());
  }

  @override
  void dispose() {
    offerCardModel1.dispose();
    offerCardModel2.dispose();
    offerCardModel3.dispose();
  }
}
