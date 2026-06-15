import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'security_item2_model.dart';
export 'security_item2_model.dart';

class SecurityItem2Widget extends StatefulWidget {
  const SecurityItem2Widget({
    super.key,
    this.icon,
    String? title,
    bool? isDestructive,
    String? subtitle,
    bool? isLast,
  })  : this.title = title ?? 'Change Password',
        this.isDestructive = isDestructive ?? false,
        this.subtitle = subtitle ?? 'Update your password',
        this.isLast = isLast ?? false;

  final Widget? icon;
  final String title;
  final bool isDestructive;
  final String subtitle;
  final bool isLast;

  @override
  State<SecurityItem2Widget> createState() => _SecurityItem2WidgetState();
}

class _SecurityItem2WidgetState extends State<SecurityItem2Widget> {
  late SecurityItem2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SecurityItem2Model());
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
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            shape: BoxShape.rectangle,
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
                            'Change Password',
                          ),
                          maxLines: 1,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: widget.isDestructive
                                        ? Color(0xFFDC2626)
                                        : Color(0xFF2D1B0E),
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          valueOrDefault<String>(
                            widget.subtitle,
                            'Update your password',
                          ),
                          maxLines: 1,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF8B6F5E),
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ].divide(SizedBox(height: 2.0)),
                    ),
                  ),
                  Icon(
                    Icons.chevron_right_rounded,
                    color: Color(0xFFC9A84C),
                    size: 20.0,
                  ),
                ].divide(SizedBox(width: 16.0)),
              ),
            ),
          ),
        ),
        if (widget.isLast ? false : true)
          Divider(
            height: 16.0,
            thickness: 1.0,
            indent: 54.0,
            endIndent: 0.0,
            color: Color(0xFFF0E6D3),
          ),
      ],
    );
  }
}
