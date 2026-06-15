import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chat_message_bubble3_model.dart';
export 'chat_message_bubble3_model.dart';

class ChatMessageBubble3Widget extends StatefulWidget {
  const ChatMessageBubble3Widget({
    super.key,
    bool? isUser,
    String? message,
    String? time,
  })  : this.isUser = isUser ?? false,
        this.message = message ??
            'Hello! I\'m your Bliss Assistant. How are you feeling today?',
        this.time = time ?? '09:41 AM';

  final bool isUser;
  final String message;
  final String time;

  @override
  State<ChatMessageBubble3Widget> createState() =>
      _ChatMessageBubble3WidgetState();
}

class _ChatMessageBubble3WidgetState extends State<ChatMessageBubble3Widget> {
  late ChatMessageBubble3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatMessageBubble3Model());
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
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            if (widget.isUser ? false : true)
              Container(
                width: 32.0,
                height: 32.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                  shape: BoxShape.circle,
                ),
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'wifxocrx' /* B */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: Colors.white,
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        lineHeight: 1.4,
                      ),
                ),
              ),
            if (widget.isUser ? false : true)
              Container(
                width: 8.0,
              ),
            Container(
              constraints: BoxConstraints(
                maxWidth: 240.0,
              ),
              decoration: BoxDecoration(
                color: widget.isUser
                    ? FlutterFlowTheme.of(context).primary
                    : Color(0x00000000),
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: Colors.transparent,
                  width: 0.0,
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(14.0, 10.0, 14.0, 10.0),
                child: Container(
                  child: Text(
                    valueOrDefault<String>(
                      widget.message,
                      'Hello! I\'m your Bliss Assistant. How are you feeling today?',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.plusJakartaSans(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: widget.isUser
                              ? Colors.white
                              : FlutterFlowTheme.of(context).primaryText,
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                          lineHeight: 1.4,
                        ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          child: Container(
            child: Text(
              valueOrDefault<String>(
                widget.time,
                '09:41 AM',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.plusJakartaSans(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 11.0,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    lineHeight: 1.4,
                  ),
            ),
          ),
        ),
      ].divide(SizedBox(height: 4.0)),
    );
  }
}
