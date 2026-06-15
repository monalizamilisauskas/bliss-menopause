import '/components/visibility_row2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_visibility_page_widget.dart' show ProfileVisibilityPageWidget;
import 'package:flutter/material.dart';

class ProfileVisibilityPageModel
    extends FlutterFlowModel<ProfileVisibilityPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for VisibilityRow.
  late VisibilityRow2Model visibilityRowModel1;
  // Model for VisibilityRow.
  late VisibilityRow2Model visibilityRowModel2;
  // Model for VisibilityRow.
  late VisibilityRow2Model visibilityRowModel3;
  // Model for VisibilityRow.
  late VisibilityRow2Model visibilityRowModel4;

  @override
  void initState(BuildContext context) {
    visibilityRowModel1 = createModel(context, () => VisibilityRow2Model());
    visibilityRowModel2 = createModel(context, () => VisibilityRow2Model());
    visibilityRowModel3 = createModel(context, () => VisibilityRow2Model());
    visibilityRowModel4 = createModel(context, () => VisibilityRow2Model());
  }

  @override
  void dispose() {
    visibilityRowModel1.dispose();
    visibilityRowModel2.dispose();
    visibilityRowModel3.dispose();
    visibilityRowModel4.dispose();
  }
}
