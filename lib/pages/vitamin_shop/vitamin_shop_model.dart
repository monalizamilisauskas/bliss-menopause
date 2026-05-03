import '/components/button/button_widget.dart';
import '/components/category_chip2/category_chip2_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/components/vitamin_card/vitamin_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'vitamin_shop_widget.dart' show VitaminShopWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VitaminShopModel extends FlutterFlowModel<VitaminShopWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextFieldModel textFieldModel;
  // Model for CategoryChip2.
  late CategoryChip2Model categoryChip2Model1;
  // Model for CategoryChip2.
  late CategoryChip2Model categoryChip2Model2;
  // Model for CategoryChip2.
  late CategoryChip2Model categoryChip2Model3;
  // Model for CategoryChip2.
  late CategoryChip2Model categoryChip2Model4;
  // Model for CategoryChip2.
  late CategoryChip2Model categoryChip2Model5;
  // Model for Button.
  late ButtonModel buttonModel;
  // Model for VitaminCard.
  late VitaminCardModel vitaminCardModel1;
  // Model for VitaminCard.
  late VitaminCardModel vitaminCardModel2;
  // Model for VitaminCard.
  late VitaminCardModel vitaminCardModel3;
  // Model for VitaminCard.
  late VitaminCardModel vitaminCardModel4;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextFieldModel());
    categoryChip2Model1 = createModel(context, () => CategoryChip2Model());
    categoryChip2Model2 = createModel(context, () => CategoryChip2Model());
    categoryChip2Model3 = createModel(context, () => CategoryChip2Model());
    categoryChip2Model4 = createModel(context, () => CategoryChip2Model());
    categoryChip2Model5 = createModel(context, () => CategoryChip2Model());
    buttonModel = createModel(context, () => ButtonModel());
    vitaminCardModel1 = createModel(context, () => VitaminCardModel());
    vitaminCardModel2 = createModel(context, () => VitaminCardModel());
    vitaminCardModel3 = createModel(context, () => VitaminCardModel());
    vitaminCardModel4 = createModel(context, () => VitaminCardModel());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    categoryChip2Model1.dispose();
    categoryChip2Model2.dispose();
    categoryChip2Model3.dispose();
    categoryChip2Model4.dispose();
    categoryChip2Model5.dispose();
    buttonModel.dispose();
    vitaminCardModel1.dispose();
    vitaminCardModel2.dispose();
    vitaminCardModel3.dispose();
    vitaminCardModel4.dispose();
  }
}
