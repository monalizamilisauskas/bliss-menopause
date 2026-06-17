import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chat_message_bubble2_model.dart';
export 'chat_message_bubble2_model.dart';

class ChatMessageBubble2Widget extends StatefulWidget {
  const ChatMessageBubble2Widget({
    super.key,
    double? width,
    double? height,
    bool? isUser,
    String? message,
    String? time,
  })  : this.width = width ?? 0.0,
        this.height = height ?? 0.0,
        this.isUser = isUser ?? false,
        this.message = message ??
            'Olá! Como posso ajudar você hoje com os sintomas da menopausa?',
        this.time = time ?? '10:30 AM';

  final double width;
  final double height;
  final bool isUser;
  final String message;
  final String time;

  @override
  State<ChatMessageBubble2Widget> createState() =>
      _ChatMessageBubble2WidgetState();
}

class _ChatMessageBubble2WidgetState extends State<ChatMessageBubble2Widget> {
  late ChatMessageBubble2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatMessageBubble2Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: valueOrDefault<double>(
        widget.width,
        0.0,
      ),
      height: valueOrDefault<double>(
        widget.height,
        0.0,
      ),
      child: Column(
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                  child: Container(
                    child: Container(
                      width: 32.0,
                      height: 32.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primary,
                        shape: BoxShape.circle,
                      ),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '5czi39x2' /* B */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Colors.white,
                              fontSize: 14.0,
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
              Container(
                constraints: BoxConstraints(
                  maxWidth: 240.0,
                ),
                decoration: BoxDecoration(
                  color: widget.isUser
                      ? FlutterFlowTheme.of(context).primary
                      : Color(0x00000000),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(valueOrDefault<double>(
                      widget.isUser ? 12.0 : 12.0,
                      0.0,
                    )),
                    topRight: Radius.circular(valueOrDefault<double>(
                      widget.isUser ? 12.0 : 12.0,
                      0.0,
                    )),
                    bottomLeft: Radius.circular(valueOrDefault<double>(
                      widget.isUser ? 12.0 : 2.0,
                      0.0,
                    )),
                    bottomRight: Radius.circular(valueOrDefault<double>(
                      widget.isUser ? 2.0 : 12.0,
                      0.0,
                    )),
                  ),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Colors.transparent,
                    width: 0.0,
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(14.0, 10.0, 14.0, 10.0),
                  child: Container(
                    child: Text(
                      valueOrDefault<String>(
                        widget.message,
                        'Olá! Como posso ajudar você hoje com os sintomas da menopausa?',
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
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                            lineHeight: 1.4,
                          ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
              child: Container(
                child: Text(
                  valueOrDefault<String>(
                    widget.time,
                    '10:30 AM',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.plusJakartaSans(
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
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
          ),
        ],
      ),
    );
  }
}
