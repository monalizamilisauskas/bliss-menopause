import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'severity_slider_model.dart';
export 'severity_slider_model.dart';

class SeveritySliderWidget extends StatefulWidget {
  const SeveritySliderWidget({
    super.key,
    String? label,
    double? value,
    String? value_text,
  })  : this.label = label ?? 'Intensity',
        this.value = value ?? 4.0,
        this.value_text = value_text ?? 'Moderate';

  final String label;
  final double value;
  final String value_text;

  @override
  State<SeveritySliderWidget> createState() => _SeveritySliderWidgetState();
}

class _SeveritySliderWidgetState extends State<SeveritySliderWidget> {
  late SeveritySliderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SeveritySliderModel());

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
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              valueOrDefault<String>(
                widget.label,
                'Intensity',
              ),
              style: FlutterFlowTheme.of(context).titleSmall.override(
                    font: GoogleFonts.interTight(
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleSmall.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleSmall.fontStyle,
                  ),
            ),
            Text(
              valueOrDefault<String>(
                widget.value_text,
                'Moderate',
              ),
              style: FlutterFlowTheme.of(context).labelLarge.override(
                    font: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelLarge.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).primary,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelLarge.fontStyle,
                    lineHeight: 1.33,
                  ),
            ),
          ],
        ),
        Slider(
          activeColor: FlutterFlowTheme.of(context).primary,
          inactiveColor: FlutterFlowTheme.of(context).alternate,
          min: 0.0,
          max: 10.0,
          value: _model.sliderValue ??= valueOrDefault<double>(
            widget.value,
            4.0,
          ),
          divisions: 10,
          onChanged: (newValue) {
            newValue = double.parse(newValue.toStringAsFixed(2));
            safeSetState(() => _model.sliderValue = newValue);
          },
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Mild',
              style: FlutterFlowTheme.of(context).labelSmall.override(
                    font: GoogleFonts.plusJakartaSans(
                      fontWeight:
                          FlutterFlowTheme.of(context).labelSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelSmall.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).labelSmall.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelSmall.fontStyle,
                    lineHeight: 1.27,
                  ),
            ),
            Text(
              'Severe',
              style: FlutterFlowTheme.of(context).labelSmall.override(
                    font: GoogleFonts.plusJakartaSans(
                      fontWeight:
                          FlutterFlowTheme.of(context).labelSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelSmall.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).labelSmall.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelSmall.fontStyle,
                    lineHeight: 1.27,
                  ),
            ),
          ],
        ),
      ].divide(SizedBox(height: 8.0)),
    );
  }
}
