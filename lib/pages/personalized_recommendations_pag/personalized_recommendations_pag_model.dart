import '/components/reading_card_widget.dart';
import '/components/recommendation_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'personalized_recommendations_pag_widget.dart'
    show PersonalizedRecommendationsPagWidget;
import 'package:flutter/material.dart';

class PersonalizedRecommendationsPagModel
    extends FlutterFlowModel<PersonalizedRecommendationsPagWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for RecommendationCard.
  late RecommendationCardModel recommendationCardModel1;
  // Model for RecommendationCard.
  late RecommendationCardModel recommendationCardModel2;
  // Model for RecommendationCard.
  late RecommendationCardModel recommendationCardModel3;
  // Model for ReadingCard.
  late ReadingCardModel readingCardModel1;
  // Model for ReadingCard.
  late ReadingCardModel readingCardModel2;

  @override
  void initState(BuildContext context) {
    recommendationCardModel1 =
        createModel(context, () => RecommendationCardModel());
    recommendationCardModel2 =
        createModel(context, () => RecommendationCardModel());
    recommendationCardModel3 =
        createModel(context, () => RecommendationCardModel());
    readingCardModel1 = createModel(context, () => ReadingCardModel());
    readingCardModel2 = createModel(context, () => ReadingCardModel());
  }

  @override
  void dispose() {
    recommendationCardModel1.dispose();
    recommendationCardModel2.dispose();
    recommendationCardModel3.dispose();
    readingCardModel1.dispose();
    readingCardModel2.dispose();
  }
}
