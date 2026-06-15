import '/components/form_section_header_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'profile_card_child2_model.dart';
export 'profile_card_child2_model.dart';

class ProfileCardChild2Widget extends StatefulWidget {
  const ProfileCardChild2Widget({super.key});

  @override
  State<ProfileCardChild2Widget> createState() =>
      _ProfileCardChild2WidgetState();
}

class _ProfileCardChild2WidgetState extends State<ProfileCardChild2Widget> {
  late ProfileCardChild2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileCardChild2Model());
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
        wrapWithModel(
          model: _model.formSectionHeaderModel,
          updateCallback: () => safeSetState(() {}),
          child: FormSectionHeaderWidget(
            title: 'Health Information',
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    '66gn39cz' /* Menopause Phase */,
                  ),
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        font: GoogleFonts.plusJakartaSans(
                          fontWeight:
                              FlutterFlowTheme.of(context).bodySmall.fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodySmall.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).bodySmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodySmall.fontStyle,
                        lineHeight: 1.4,
                      ),
                ),
                FlutterFlowDropDown<String>(
                  controller: _model.dropdownValueController ??=
                      FormFieldController<String>(
                    _model.dropdownValue ??=
                        FFLocalizations.of(context).getText(
                      'qo9m0034' /* Perimenopause */,
                    ),
                  ),
                  options: [
                    FFLocalizations.of(context).getText(
                      'hvp7829n' /* Perimenopause */,
                    ),
                    FFLocalizations.of(context).getText(
                      'zl0eusa4' /* Menopause */,
                    ),
                    FFLocalizations.of(context).getText(
                      '2rmqns4b' /* Post-Menopause */,
                    )
                  ],
                  onChanged: (val) =>
                      safeSetState(() => _model.dropdownValue = val),
                  width: 200.0,
                  height: 40.0,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.plusJakartaSans(
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        lineHeight: 1.4,
                      ),
                  hintText: FFLocalizations.of(context).getText(
                    'tekh7wy8' /* Perimenopause */,
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 2.0,
                  borderColor: Color(0xFFF0E6D3),
                  borderWidth: 1.0,
                  borderRadius: 12.0,
                  margin: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  hidesUnderline: true,
                  isOverButton: false,
                  isSearchable: false,
                  isMultiSelect: false,
                ),
              ].divide(SizedBox(height: 4.0)),
            ),
          ].divide(SizedBox(height: 16.0)),
        ),
      ],
    );
  }
}
