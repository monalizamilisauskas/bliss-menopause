import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'progress_step_model.dart';
export 'progress_step_model.dart';

class ProgressStepWidget extends StatefulWidget {
  const ProgressStepWidget({
    super.key,
    bool? active,
  }) : this.active = active ?? true;

  final bool active;

  @override
  State<ProgressStepWidget> createState() => _ProgressStepWidgetState();
}

class _ProgressStepWidgetState extends State<ProgressStepWidget> {
  late ProgressStepModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProgressStepModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.0,
      decoration: BoxDecoration(
        color: widget.active
            ? FlutterFlowTheme.of(context).primary
            : FlutterFlowTheme.of(context).alternate,
        borderRadius: BorderRadius.circular(9999.0),
        shape: BoxShape.rectangle,
      ),
    );
  }
}
