import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'settings_row_child2_model.dart';
export 'settings_row_child2_model.dart';

class SettingsRowChild2Widget extends StatefulWidget {
  const SettingsRowChild2Widget({super.key});

  @override
  State<SettingsRowChild2Widget> createState() =>
      _SettingsRowChild2WidgetState();
}

class _SettingsRowChild2WidgetState extends State<SettingsRowChild2Widget> {
  late SettingsRowChild2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsRowChild2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.0,
      height: 0.0,
    );
  }
}
