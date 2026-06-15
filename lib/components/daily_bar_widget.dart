import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'daily_bar_model.dart';
export 'daily_bar_model.dart';

class DailyBarWidget extends StatefulWidget {
  const DailyBarWidget({
    super.key,
    double? height,
    String? day,
  })  : this.height = height ?? 30.0,
        this.day = day ?? 'Mon';

  final double height;
  final String day;

  @override
  State<DailyBarWidget> createState() => _DailyBarWidgetState();
}

class _DailyBarWidgetState extends State<DailyBarWidget> {
  late DailyBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DailyBarModel());
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
        Container(
          width: 32.0,
          height: valueOrDefault<double>(
            widget.height,
            30.0,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primary,
            borderRadius: BorderRadius.circular(6.0),
            shape: BoxShape.rectangle,
          ),
        ),
        Text(
          valueOrDefault<String>(
            widget.day,
            'Mon',
          ),
          style: FlutterFlowTheme.of(context).labelSmall.override(
                font: GoogleFonts.plusJakartaSans(
                  fontWeight:
                      FlutterFlowTheme.of(context).labelSmall.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).secondaryText,
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).labelSmall.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                lineHeight: 1.4,
              ),
        ),
      ].divide(SizedBox(height: 8.0)),
    );
  }
}
