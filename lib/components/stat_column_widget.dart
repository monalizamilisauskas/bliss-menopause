import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'stat_column_model.dart';
export 'stat_column_model.dart';

class StatColumnWidget extends StatefulWidget {
  const StatColumnWidget({
    super.key,
    String? value,
    String? label,
  })  : this.value = value ?? '21',
        this.label = label ?? 'Best';

  final String value;
  final String label;

  @override
  State<StatColumnWidget> createState() => _StatColumnWidgetState();
}

class _StatColumnWidgetState extends State<StatColumnWidget> {
  late StatColumnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatColumnModel());
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
            '21',
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
        Opacity(
          opacity: 0.8,
          child: Text(
            valueOrDefault<String>(
              widget.label,
              'Best',
            ),
            style: FlutterFlowTheme.of(context).bodySmall.override(
                  font: GoogleFonts.plusJakartaSans(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodySmall.fontWeight,
                    fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                  ),
                  color: Colors.white,
                  letterSpacing: 0.0,
                  fontWeight: FlutterFlowTheme.of(context).bodySmall.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                  lineHeight: 1.4,
                ),
          ),
        ),
      ].divide(SizedBox(height: 4.0)),
    );
  }
}
