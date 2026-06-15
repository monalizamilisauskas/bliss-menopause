import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mood_chip_model.dart';
export 'mood_chip_model.dart';

class MoodChipWidget extends StatefulWidget {
  const MoodChipWidget({
    super.key,
    String? emoji,
    String? label,
    bool? active,
  })  : this.emoji = emoji ?? '😊',
        this.label = label ?? 'Calm',
        this.active = active ?? true;

  final String emoji;
  final String label;
  final bool active;

  @override
  State<MoodChipWidget> createState() => _MoodChipWidgetState();
}

class _MoodChipWidgetState extends State<MoodChipWidget> {
  late MoodChipModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MoodChipModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.active
            ? FlutterFlowTheme.of(context).primary
            : FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(24.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: widget.active
              ? FlutterFlowTheme.of(context).primary
              : FlutterFlowTheme.of(context).alternate,
          width: widget.active ? 1.0 : 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: Container(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.emoji,
                    '😊',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.plusJakartaSans(
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        fontSize: 24.0,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        lineHeight: 1.47,
                      ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget.label,
                    'Calm',
                  ),
                  style: FlutterFlowTheme.of(context).labelSmall.override(
                        font: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w500,
                          fontStyle:
                              FlutterFlowTheme.of(context).labelSmall.fontStyle,
                        ),
                        color: widget.active
                            ? FlutterFlowTheme.of(context).onPrimary
                            : FlutterFlowTheme.of(context).primaryText,
                        fontSize: 10.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelSmall.fontStyle,
                        lineHeight: 1.27,
                      ),
                ),
              ].divide(SizedBox(height: 4.0)),
            ),
          ),
        ),
      ),
    );
  }
}
