import '/components/category_chip4_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'create_post_page_widget.dart' show CreatePostPageWidget;
import 'package:flutter/material.dart';

class CreatePostPageModel extends FlutterFlowModel<CreatePostPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CategoryChip.
  late CategoryChip4Model categoryChipModel1;
  // Model for CategoryChip.
  late CategoryChip4Model categoryChipModel2;
  // Model for CategoryChip.
  late CategoryChip4Model categoryChipModel3;
  // Model for CategoryChip.
  late CategoryChip4Model categoryChipModel4;
  // Model for CategoryChip.
  late CategoryChip4Model categoryChipModel5;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    categoryChipModel1 = createModel(context, () => CategoryChip4Model());
    categoryChipModel2 = createModel(context, () => CategoryChip4Model());
    categoryChipModel3 = createModel(context, () => CategoryChip4Model());
    categoryChipModel4 = createModel(context, () => CategoryChip4Model());
    categoryChipModel5 = createModel(context, () => CategoryChip4Model());
  }

  @override
  void dispose() {
    categoryChipModel1.dispose();
    categoryChipModel2.dispose();
    categoryChipModel3.dispose();
    categoryChipModel4.dispose();
    categoryChipModel5.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
