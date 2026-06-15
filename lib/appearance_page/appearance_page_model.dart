import '/components/color_circle_widget.dart';
import '/components/font_size_btn_widget.dart';
import '/components/section_label_widget.dart';
import '/components/settings_row2_widget.dart';
import '/components/settings_row_widget.dart';
import '/components/theme_option_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'appearance_page_widget.dart' show AppearancePageWidget;
import 'package:flutter/material.dart';

class AppearancePageModel extends FlutterFlowModel<AppearancePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SectionLabel.
  late SectionLabelModel sectionLabelModel1;
  // Model for ThemeOption.
  late ThemeOptionModel themeOptionModel1;
  // Model for ThemeOption.
  late ThemeOptionModel themeOptionModel2;
  // Model for SectionLabel.
  late SectionLabelModel sectionLabelModel2;
  // Model for FontSizeBtn.
  late FontSizeBtnModel fontSizeBtnModel1;
  // Model for FontSizeBtn.
  late FontSizeBtnModel fontSizeBtnModel2;
  // Model for FontSizeBtn.
  late FontSizeBtnModel fontSizeBtnModel3;
  // Model for SectionLabel.
  late SectionLabelModel sectionLabelModel3;
  // Model for ColorCircle.
  late ColorCircleModel colorCircleModel1;
  // Model for ColorCircle.
  late ColorCircleModel colorCircleModel2;
  // Model for ColorCircle.
  late ColorCircleModel colorCircleModel3;
  // Model for ColorCircle.
  late ColorCircleModel colorCircleModel4;
  // Model for ColorCircle.
  late ColorCircleModel colorCircleModel5;
  // Model for SectionLabel.
  late SectionLabelModel sectionLabelModel4;
  // Model for SettingsRow.
  late SettingsRowModel settingsRowModel;
  // Model for SettingsRow2.
  late SettingsRow2Model settingsRow2Model;

  @override
  void initState(BuildContext context) {
    sectionLabelModel1 = createModel(context, () => SectionLabelModel());
    themeOptionModel1 = createModel(context, () => ThemeOptionModel());
    themeOptionModel2 = createModel(context, () => ThemeOptionModel());
    sectionLabelModel2 = createModel(context, () => SectionLabelModel());
    fontSizeBtnModel1 = createModel(context, () => FontSizeBtnModel());
    fontSizeBtnModel2 = createModel(context, () => FontSizeBtnModel());
    fontSizeBtnModel3 = createModel(context, () => FontSizeBtnModel());
    sectionLabelModel3 = createModel(context, () => SectionLabelModel());
    colorCircleModel1 = createModel(context, () => ColorCircleModel());
    colorCircleModel2 = createModel(context, () => ColorCircleModel());
    colorCircleModel3 = createModel(context, () => ColorCircleModel());
    colorCircleModel4 = createModel(context, () => ColorCircleModel());
    colorCircleModel5 = createModel(context, () => ColorCircleModel());
    sectionLabelModel4 = createModel(context, () => SectionLabelModel());
    settingsRowModel = createModel(context, () => SettingsRowModel());
    settingsRow2Model = createModel(context, () => SettingsRow2Model());
  }

  @override
  void dispose() {
    sectionLabelModel1.dispose();
    themeOptionModel1.dispose();
    themeOptionModel2.dispose();
    sectionLabelModel2.dispose();
    fontSizeBtnModel1.dispose();
    fontSizeBtnModel2.dispose();
    fontSizeBtnModel3.dispose();
    sectionLabelModel3.dispose();
    colorCircleModel1.dispose();
    colorCircleModel2.dispose();
    colorCircleModel3.dispose();
    colorCircleModel4.dispose();
    colorCircleModel5.dispose();
    sectionLabelModel4.dispose();
    settingsRowModel.dispose();
    settingsRow2Model.dispose();
  }
}
