import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'stat_column2_model.dart';
export 'stat_column2_model.dart';

class StatColumn2Widget extends StatefulWidget {
  const StatColumn2Widget({
    super.key,
    String? value,
    String? label,
  })  : this.value = value ?? '12',
        this.label = label ?? 'Day streak';

  final String value;
  final String label;

  @override
  State<StatColumn2Widget> createState() => _StatColumn2WidgetState();
}

class _StatColumn2WidgetState extends State<StatColumn2Widget> {
  late StatColumn2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatColumn2Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          valueOrDefault<String>(
            widget.value,
            '12',
          ),
          style: FlutterFlowTheme.of(context).titleLarge.override(
                font: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                ),
                color: Colors.white,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
                fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                lineHeight: 1.4,
              ),
        ),
        Text(
          valueOrDefault<String>(
            widget.label,
            'Day streak',
          ),
          style: FlutterFlowTheme.of(context).bodySmall.override(
                font: GoogleFonts.plusJakartaSans(
                  fontWeight: FlutterFlowTheme.of(context).bodySmall.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                ),
                color: Colors.white,
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).bodySmall.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                lineHeight: 1.4,
              ),
        ),
      ].divide(SizedBox(height: 4.0)),
    );
  }
}
