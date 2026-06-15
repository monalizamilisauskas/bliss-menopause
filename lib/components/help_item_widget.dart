import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'help_item_model.dart';
export 'help_item_model.dart';

class HelpItemWidget extends StatefulWidget {
  const HelpItemWidget({
    super.key,
    this.icon,
    String? title,
    String? subtitle,
    bool? showBadge,
    bool? last,
  })  : this.title = title ?? 'How to use Bliss',
        this.subtitle = subtitle ?? 'Quick start guide',
        this.showBadge = showBadge ?? false,
        this.last = last ?? false;

  final Widget? icon;
  final String title;
  final String subtitle;
  final bool showBadge;
  final bool last;

  @override
  State<HelpItemWidget> createState() => _HelpItemWidgetState();
}

class _HelpItemWidgetState extends State<HelpItemWidget> {
  late HelpItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HelpItemModel());
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
        Padding(
          padding: EdgeInsets.all(16.0),
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
                        'How to use Bliss',
                      ),
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: Color(0xFF2D1B0E),
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
                        'Quick start guide',
                      ),
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
              if (valueOrDefault<bool>(
                widget.showBadge,
                false,
              ))
                Container(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFD1FAE5),
                      borderRadius: BorderRadius.circular(4.0),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                      child: Container(
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '3vdx4d3o' /* Online */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF059669),
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ),
              if (widget.showBadge ? false : true)
                Icon(
                  Icons.chevron_right_rounded,
                  color: Color(0xFFC9A84C),
                  size: 20.0,
                ),
            ].divide(SizedBox(width: 16.0)),
          ),
        ),
        if (widget.last ? false : true)
          Divider(
            height: 16.0,
            thickness: 1.0,
            indent: 0.0,
            endIndent: 0.0,
            color: Color(0xFFF0E6D3),
          ),
      ],
    );
  }
}
