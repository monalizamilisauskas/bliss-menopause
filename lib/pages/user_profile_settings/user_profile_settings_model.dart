import '/components/button/button_widget.dart';
import '/components/profile_stat/profile_stat_widget.dart';
import '/components/settings_item/settings_item_widget.dart';
import '/components/switch_component/switch_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'user_profile_settings_widget.dart' show UserProfileSettingsWidget;
import 'package:flutter/material.dart';

class UserProfileSettingsModel
    extends FlutterFlowModel<UserProfileSettingsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ProfileStat.
  late ProfileStatModel profileStatModel1;
  // Model for ProfileStat.
  late ProfileStatModel profileStatModel2;
  // Model for ProfileStat.
  late ProfileStatModel profileStatModel3;
  // Model for SettingsItem.
  late SettingsItemModel settingsItemModel1;
  // Model for SettingsItem.
  late SettingsItemModel settingsItemModel2;
  // Model for SettingsItem.
  late SettingsItemModel settingsItemModel3;
  // Model for SwitchComponent.
  late SwitchComponentModel switchComponentModel;
  // Model for SettingsItem.
  late SettingsItemModel settingsItemModel4;
  // Model for SettingsItem.
  late SettingsItemModel settingsItemModel5;
  // Model for SettingsItem.
  late SettingsItemModel settingsItemModel6;
  // Model for SettingsItem.
  late SettingsItemModel settingsItemModel7;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    profileStatModel1 = createModel(context, () => ProfileStatModel());
    profileStatModel2 = createModel(context, () => ProfileStatModel());
    profileStatModel3 = createModel(context, () => ProfileStatModel());
    settingsItemModel1 = createModel(context, () => SettingsItemModel());
    settingsItemModel2 = createModel(context, () => SettingsItemModel());
    settingsItemModel3 = createModel(context, () => SettingsItemModel());
    switchComponentModel = createModel(context, () => SwitchComponentModel());
    settingsItemModel4 = createModel(context, () => SettingsItemModel());
    settingsItemModel5 = createModel(context, () => SettingsItemModel());
    settingsItemModel6 = createModel(context, () => SettingsItemModel());
    settingsItemModel7 = createModel(context, () => SettingsItemModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    profileStatModel1.dispose();
    profileStatModel2.dispose();
    profileStatModel3.dispose();
    settingsItemModel1.dispose();
    settingsItemModel2.dispose();
    settingsItemModel3.dispose();
    switchComponentModel.dispose();
    settingsItemModel4.dispose();
    settingsItemModel5.dispose();
    settingsItemModel6.dispose();
    settingsItemModel7.dispose();
    buttonModel.dispose();
  }
}
