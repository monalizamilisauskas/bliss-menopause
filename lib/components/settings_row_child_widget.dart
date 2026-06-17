import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'settings_row_child_model.dart';
export 'settings_row_child_model.dart';

class SettingsRowChildWidget extends StatefulWidget {
  const SettingsRowChildWidget({super.key});

  @override
  State<SettingsRowChildWidget> createState() => _SettingsRowChildWidgetState();
}

class _SettingsRowChildWidgetState extends State<SettingsRowChildWidget> {
  late SettingsRowChildModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsRowChildModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
