import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'category_chip3_model.dart';
export 'category_chip3_model.dart';

class CategoryChip3Widget extends StatefulWidget {
  const CategoryChip3Widget({
    super.key,
    bool? selected,
    String? label,
  })  : this.selected = selected ?? true,
        this.label = label ?? 'Hot Flashes';

  final bool selected;
  final String label;

  @override
  State<CategoryChip3Widget> createState() => _CategoryChip3WidgetState();
}

class _CategoryChip3WidgetState extends State<CategoryChip3Widget> {
  late CategoryChip3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryChip3Model());
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
        color: widget.selected
            ? FlutterFlowTheme.of(context).primary
            : Color(0x00000000),
        borderRadius: BorderRadius.circular(20.0),
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
        child: Container(
          child: Text(
            valueOrDefault<String>(
              widget.label,
              'Hot Flashes',
            ),
            style: FlutterFlowTheme.of(context).labelSmall.override(
                  font: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelSmall.fontStyle,
                  ),
                  color: widget.selected
                      ? Colors.white
                      : FlutterFlowTheme.of(context).secondaryText,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                  lineHeight: 1.4,
                ),
          ),
        ),
      ),
    );
  }
}
