import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'section_label_model.dart';
export 'section_label_model.dart';

class SectionLabelWidget extends StatefulWidget {
  const SectionLabelWidget({
    super.key,
    String? label,
  }) : this.label = label ?? 'THEME';

  final String label;

  @override
  State<SectionLabelWidget> createState() => _SectionLabelWidgetState();
}

class _SectionLabelWidgetState extends State<SectionLabelWidget> {
  late SectionLabelModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SectionLabelModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
      child: Container(
        child: Text(
          valueOrDefault<String>(
            widget.label,
            'THEME',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                color: Color(0xFF8B6F5E),
                fontSize: 13.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                lineHeight: 1.4,
              ),
        ),
      ),
    );
  }
}
