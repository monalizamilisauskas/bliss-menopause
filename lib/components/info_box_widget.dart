import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'info_box_model.dart';
export 'info_box_model.dart';

class InfoBoxWidget extends StatefulWidget {
  const InfoBoxWidget({
    super.key,
    Color? bgColor,
    Color? borderColor,
    bool? visible,
    this.iconName,
    Color? iconColor,
    String? message,
    Color? textColor,
  })  : this.bgColor = bgColor ?? const Color(0xFFFFF8EC),
        this.borderColor = borderColor ?? const Color(0xFFF0E6D3),
        this.visible = visible ?? true,
        this.iconColor = iconColor ?? const Color(0xFFC9A84C),
        this.message = message ??
            'Two-factor authentication adds an extra security step when you log in. Full SMS verification coming soon.',
        this.textColor = textColor ?? const Color(0xFF8B6F5E);

  final Color bgColor;
  final Color borderColor;
  final bool visible;
  final Widget? iconName;
  final Color iconColor;
  final String message;
  final Color textColor;

  @override
  State<InfoBoxWidget> createState() => _InfoBoxWidgetState();
}

class _InfoBoxWidgetState extends State<InfoBoxWidget> {
  late InfoBoxModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InfoBoxModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: valueOrDefault<bool>(
        widget.visible,
        true,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
        child: Container(
          child: Container(
            decoration: BoxDecoration(
              color: valueOrDefault<Color>(
                widget.bgColor,
                Color(0xFFFFF8EC),
              ),
              borderRadius: BorderRadius.circular(12.0),
              shape: BoxShape.rectangle,
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Container(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    widget.iconName!,
                    Expanded(
                      flex: 1,
                      child: Text(
                        valueOrDefault<String>(
                          widget.message,
                          'Two-factor authentication adds an extra security step when you log in. Full SMS verification coming soon.',
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
                              color: valueOrDefault<Color>(
                                widget.textColor,
                                Color(0xFF8B6F5E),
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontStyle,
                              lineHeight: 1.5,
                            ),
                      ),
                    ),
                  ].divide(SizedBox(width: 10.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
