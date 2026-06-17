import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'font_size_btn_model.dart';
export 'font_size_btn_model.dart';

class FontSizeBtnWidget extends StatefulWidget {
  const FontSizeBtnWidget({
    super.key,
    bool? selected,
    String? label,
  })  : this.selected = selected ?? false,
        this.label = label ?? 'S';

  final bool selected;
  final String label;

  @override
  State<FontSizeBtnWidget> createState() => _FontSizeBtnWidgetState();
}

class _FontSizeBtnWidgetState extends State<FontSizeBtnWidget> {
  late FontSizeBtnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FontSizeBtnModel());

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
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: widget.selected ? Color(0xFFC9A84C) : Color(0xFFF0E6D3),
        borderRadius: BorderRadius.circular(20.0),
        shape: BoxShape.rectangle,
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Text(
        valueOrDefault<String>(
          widget.label,
          'S',
        ),
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              font: GoogleFonts.plusJakartaSans(
                fontWeight: FontWeight.bold,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
              color: widget.selected ? Colors.white : Color(0xFF2D1B0E),
              letterSpacing: 0.0,
              fontWeight: FontWeight.bold,
              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              lineHeight: 1.4,
            ),
      ),
    );
  }
}
