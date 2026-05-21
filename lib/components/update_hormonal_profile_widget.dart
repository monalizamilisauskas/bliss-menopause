import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'update_hormonal_profile_model.dart';
export 'update_hormonal_profile_model.dart';

class UpdateHormonalProfileWidget extends StatefulWidget {
  const UpdateHormonalProfileWidget({super.key});

  @override
  State<UpdateHormonalProfileWidget> createState() =>
      _UpdateHormonalProfileWidgetState();
}

class _UpdateHormonalProfileWidgetState
    extends State<UpdateHormonalProfileWidget> {
  late UpdateHormonalProfileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UpdateHormonalProfileModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
          child: Container(
            width: 338.7,
            height: 418.77,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.0),
                topRight: Radius.circular(24.0),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                    'Update Hormonal Profile',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Inter Tight',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                    'Estrogen Level',
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          font: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodySmall
                                .fontStyle,
                          ),
                          color: Color(0xFF2D1B0E),
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodySmall.fontStyle,
                        ),
                  ),
                ),
                SliderTheme(
                  data: SliderThemeData(
                    showValueIndicator: ShowValueIndicator.onDrag,
                  ),
                  child: Slider(
                    activeColor: Color(0xFFC9A84C),
                    inactiveColor: Color(0xFFF0E6D3),
                    min: 0.0,
                    max: 100.0,
                    value: _model.sliderValue1 ??=
                        _model.estrogenValue.toDouble(),
                    label: _model.sliderValue1?.toStringAsFixed(0),
                    onChanged: (newValue) async {
                      newValue = double.parse(newValue.toStringAsFixed(0));
                      safeSetState(() => _model.sliderValue1 = newValue);
                      _model.estrogenValue =
                          functions.doubleToInt(_model.sliderValue1!);
                      safeSetState(() {});
                    },
                  ),
                ),
                Text(
                  'Progesterone Level',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        font: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodySmall.fontStyle,
                        ),
                        color: Color(0xFF2D1B0E),
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodySmall.fontStyle,
                      ),
                ),
                SliderTheme(
                  data: SliderThemeData(
                    showValueIndicator: ShowValueIndicator.onDrag,
                  ),
                  child: Slider(
                    activeColor: Color(0xFFC9A84C),
                    inactiveColor: Color(0xFFF0E6D3),
                    min: 0.0,
                    max: 100.0,
                    value: _model.sliderValue2 ??=
                        _model.progesteroneValue.toDouble(),
                    label: _model.sliderValue2?.toStringAsFixed(0),
                    onChanged: (newValue) async {
                      newValue = double.parse(newValue.toStringAsFixed(0));
                      safeSetState(() => _model.sliderValue2 = newValue);
                      _model.progesteroneValue =
                          functions.doubleToInt(_model.sliderValue2!);
                      safeSetState(() {});
                    },
                  ),
                ),
                Text(
                  'FSH Level',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        font: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodySmall.fontStyle,
                        ),
                        color: Color(0xFF2D1B0E),
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodySmall.fontStyle,
                      ),
                ),
                SliderTheme(
                  data: SliderThemeData(
                    showValueIndicator: ShowValueIndicator.onDrag,
                  ),
                  child: Slider(
                    activeColor: Color(0xFFC9A84C),
                    inactiveColor: Color(0xFFF0E6D3),
                    min: 0.0,
                    max: 100.0,
                    value: _model.sliderValue3 ??= _model.fshValue.toDouble(),
                    label: _model.sliderValue3?.toStringAsFixed(0),
                    onChanged: (newValue) async {
                      newValue = double.parse(newValue.toStringAsFixed(0));
                      safeSetState(() => _model.sliderValue3 = newValue);
                      _model.fshValue =
                          functions.doubleToInt(_model.sliderValue3!);
                      safeSetState(() {});
                    },
                  ),
                ),
                FlutterFlowDropDown<String>(
                  controller: _model.dropDownValueController ??=
                      FormFieldController<String>(null),
                  options: ['Perimenopause', 'Menopause', 'Post-Menopause'],
                  onChanged: (val) =>
                      safeSetState(() => _model.dropDownValue = val),
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
                      ),
                  hintText: 'Select...',
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 2.0,
                  borderColor: Color(0xFFC9A84C),
                  borderWidth: 0.0,
                  borderRadius: 12.0,
                  margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  hidesUnderline: true,
                  isOverButton: false,
                  isSearchable: false,
                  isMultiSelect: false,
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await actions.saveHormonalProfile(
                        _model.estrogenValue,
                        _model.progesteroneValue,
                        _model.fshValue,
                        _model.dropDownValue!,
                      );
                      context.safePop();
                    },
                    text: 'Save Changes',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 52.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter Tight',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
