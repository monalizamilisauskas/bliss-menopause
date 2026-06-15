import '/components/article_card1_widget.dart';
import '/components/filter_chip2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'allreadings_page_widget.dart' show AllreadingsPageWidget;
import 'package:flutter/material.dart';

class AllreadingsPageModel extends FlutterFlowModel<AllreadingsPageWidget> {
  ///  Local state fields for this page.

  String searchText = '\"\"';

  String selectedTag = 'All';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for FilterChip.
  late FilterChip2Model filterChipModel1;
  // Model for FilterChip.
  late FilterChip2Model filterChipModel2;
  // Model for FilterChip.
  late FilterChip2Model filterChipModel3;
  // Model for FilterChip.
  late FilterChip2Model filterChipModel4;
  // Models for ArticleCard.
  late FlutterFlowDynamicModels<ArticleCard1Model> articleCardModels;

  @override
  void initState(BuildContext context) {
    filterChipModel1 = createModel(context, () => FilterChip2Model());
    filterChipModel2 = createModel(context, () => FilterChip2Model());
    filterChipModel3 = createModel(context, () => FilterChip2Model());
    filterChipModel4 = createModel(context, () => FilterChip2Model());
    articleCardModels = FlutterFlowDynamicModels(() => ArticleCard1Model());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    filterChipModel1.dispose();
    filterChipModel2.dispose();
    filterChipModel3.dispose();
    filterChipModel4.dispose();
    articleCardModels.dispose();
  }
}
