import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'theme_option_model.dart';
export 'theme_option_model.dart';

class ThemeOptionWidget extends StatefulWidget {
  const ThemeOptionWidget({
    super.key,
    this.icon,
    bool? selected,
    String? title,
    String? subtitle,
  })  : this.selected = selected ?? true,
        this.title = title ?? 'Light Mode',
        this.subtitle = subtitle ?? 'Bright and clean interface';

  final Widget? icon;
  final bool selected;
  final String title;
  final String subtitle;

  @override
  State<ThemeOptionWidget> createState() => _ThemeOptionWidgetState();
}

class _ThemeOptionWidgetState extends State<ThemeOptionWidget> {
  late ThemeOptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ThemeOptionModel());
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
        borderRadius: BorderRadius.circular(16.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Color(0xFFC9A84C),
          width: widget.selected ? 2.0 : 0.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              widget.icon!,
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        widget.title,
                        'Light Mode',
                      ),
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            font: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .fontStyle,
                            ),
                            color: Color(0xFF2D1B0E),
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontStyle,
                            lineHeight: 1.4,
                          ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget.subtitle,
                        'Bright and clean interface',
                      ),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            font: GoogleFonts.plusJakartaSans(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodySmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodySmall
                                .fontStyle,
                            lineHeight: 1.4,
                          ),
                    ),
                  ].divide(SizedBox(height: 2.0)),
                ),
              ),
              Container(
                width: 22.0,
                height: 22.0,
                child: Stack(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  children: [
                    if (widget.selected ? true : false)
                      Icon(
                        Icons.radio_button_checked_rounded,
                        color: widget.selected
                            ? Color(0xFFC9A84C)
                            : FlutterFlowTheme.of(context).alternate,
                        size: 22.0,
                      ),
                    if (widget.selected ? false : true)
                      Icon(
                        Icons.radio_button_unchecked_rounded,
                        color: widget.selected
                            ? Color(0xFFC9A84C)
                            : FlutterFlowTheme.of(context).alternate,
                        size: 22.0,
                      ),
                  ],
                ),
              ),
            ].divide(SizedBox(width: 16.0)),
          ),
        ),
      ),
    );
  }
}
