import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'quick_action_model.dart';
export 'quick_action_model.dart';

class QuickActionWidget extends StatefulWidget {
  const QuickActionWidget({
    super.key,
    Color? bg_icon,
    this.icon,
    Color? icon_color,
    String? label,
    String? on_tap,
  })  : this.bg_icon = bg_icon ?? const Color(0xFFFFF0F3),
        this.icon_color = icon_color ?? const Color(0xFFFF4D6D),
        this.label = label ?? 'Track\nSymptoms',
        this.on_tap = on_tap ?? 'navigate:DailySymptomTracker';

  final Color bg_icon;
  final Widget? icon;
  final Color icon_color;
  final String label;
  final String on_tap;

  @override
  State<QuickActionWidget> createState() => _QuickActionWidgetState();
}

class _QuickActionWidgetState extends State<QuickActionWidget> {
  late QuickActionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuickActionModel());
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
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(24.0),
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 48.0,
                height: 48.0,
                decoration: BoxDecoration(
                  color: valueOrDefault<Color>(
                    widget.bg_icon,
                    Color(0xFFFFF0F3),
                  ),
                  borderRadius: BorderRadius.circular(9999.0),
                  shape: BoxShape.rectangle,
                ),
                alignment: AlignmentDirectional(0.0, 0.0),
                child: widget.icon!,
              ),
              Text(
                valueOrDefault<String>(
                  widget.label,
                  'Track\nSymptoms',
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      font: GoogleFonts.plusJakartaSans(
                        fontWeight:
                            FlutterFlowTheme.of(context).labelMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelMedium.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).primaryText,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).labelMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelMedium.fontStyle,
                      lineHeight: 1.38,
                    ),
              ),
            ].divide(SizedBox(height: 8.0)),
          ),
        ),
      ),
    );
  }
}
