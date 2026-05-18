import '/components/offer_card_widget.dart';
import '/components/stat_item2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'subscription_win_back_pag_widget.dart'
    show SubscriptionWinBackPagWidget;
import 'package:flutter/material.dart';

class SubscriptionWinBackPagModel
    extends FlutterFlowModel<SubscriptionWinBackPagWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for StatItem.
  late StatItem2Model statItemModel1;
  // Model for StatItem.
  late StatItem2Model statItemModel2;
  // Model for StatItem.
  late StatItem2Model statItemModel3;
  // Model for OfferCard.
  late OfferCardModel offerCardModel1;
  // Model for OfferCard.
  late OfferCardModel offerCardModel2;
  // Model for OfferCard.
  late OfferCardModel offerCardModel3;

  @override
  void initState(BuildContext context) {
    statItemModel1 = createModel(context, () => StatItem2Model());
    statItemModel2 = createModel(context, () => StatItem2Model());
    statItemModel3 = createModel(context, () => StatItem2Model());
    offerCardModel1 = createModel(context, () => OfferCardModel());
    offerCardModel2 = createModel(context, () => OfferCardModel());
    offerCardModel3 = createModel(context, () => OfferCardModel());
  }

  @override
  void dispose() {
    statItemModel1.dispose();
    statItemModel2.dispose();
    statItemModel3.dispose();
    offerCardModel1.dispose();
    offerCardModel2.dispose();
    offerCardModel3.dispose();
  }
}
