import '/components/color_circle_widget.dart';
import '/components/font_size_btn_widget.dart';
import '/components/section_label_widget.dart';
import '/components/settings_row2_widget.dart';
import '/components/settings_row_child2_widget.dart';
import '/components/settings_row_child_widget.dart';
import '/components/settings_row_widget.dart';
import '/components/theme_option_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'appearance_page_model.dart';
export 'appearance_page_model.dart';

/// Create AppearancePage.
///
/// Background #FDF6F0. Safe area enabled. Back arrow top left navigates back.
/// Title "Appearance" bold size 24 color #2D1B0E centered margin top 16px.
/// Padding horizontal 16px throughout. Space between all sections 16px.
/// Section 1 — Label "Theme" bold size 13 color #8B6F5E margin bottom 8px.
/// White card border radius 16px border 1px solid #F0E6D3 padding 0px. Each
/// row: padding 16px, divider 1px #F0E6D3 between items. Two selectable
/// options with radio button right side color #C9A84C:  Icon
/// light_mode_rounded color #C9A84C: "Light Mode" / "Bright and clean
/// interface" — selected by default with border #C9A84C width 2px Icon
/// dark_mode_rounded color #6B7280: "Dark Mode" / "Easy on the eyes at night"
///  Section 2 — Label "Text Size" bold size 13 color #8B6F5E margin bottom
/// 8px. White card border radius 16px border 1px solid #F0E6D3 padding 16px.
/// Row with label "Font Size" bold 15px color #2D1B0E left. Three buttons
/// right: "S" "M" "L" rounded background #F0E6D3, selected "M" background
/// #C9A84C text white. Section 3 — Label "Colors" bold size 13 color #8B6F5E
/// margin bottom 8px. White card border radius 16px border 1px solid #F0E6D3
/// padding 16px. Title "Accent Color" bold 15px color #2D1B0E. Row of 5 color
/// circles size 32px: #C9A84C (selected with white checkmark), #8B5CF6,
/// #EC4899, #059669, #3B82F6. Section 4 — Label "Layout" bold size 13 color
/// #8B6F5E margin bottom 8px. White card border radius 16px border 1px solid
/// #F0E6D3 padding 0px. Each row: padding 16px, divider between items:  Icon
/// notifications_rounded color #C9A84C: "Compact View" / "Show more content"
/// with Toggle switch right active false Icon view_agenda_rounded color
/// #C9A84C: "Show Animations" / "Smooth transitions" with Toggle switch right
/// active true  Button "Save Changes" background #C9A84C text white bold
/// rounded 50px full width height 52px margin top 24px margin bottom 32px.
/// Use FlutterFlowTheme tokens. GoogleFonts.plusJakartaSans. Safe area
/// enabled
class AppearancePageWidget extends StatefulWidget {
  const AppearancePageWidget({super.key});

  static String routeName = 'AppearancePage';
  static String routePath = '/AppearancePage';

  @override
  State<AppearancePageWidget> createState() => _AppearancePageWidgetState();
}

class _AppearancePageWidgetState extends State<AppearancePageWidget> {
  late AppearancePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppearancePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFFDF6F0),
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 16.0, 0.0, 16.0),
                        child: Container(
                          child: Stack(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1.0, -1.0),
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  child: FlutterFlowIconButton(
                                    borderRadius: 8.0,
                                    buttonSize: 40.0,
                                    fillColor: Colors.transparent,
                                    icon: Icon(
                                      Icons.arrow_back_rounded,
                                      color: Color(0xFF2D1B0E),
                                      size: 24.0,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'mk3bhzyp' /* Appearance */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.plusJakartaSans(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF2D1B0E),
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                        lineHeight: 1.4,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      wrapWithModel(
                        model: _model.sectionLabelModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: SectionLabelWidget(
                          label: 'THEME',
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Color(0xFFF0E6D3),
                              width: 1.0,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              wrapWithModel(
                                model: _model.themeOptionModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: ThemeOptionWidget(
                                  icon: Icon(
                                    Icons.light_mode_rounded,
                                    size: 24.0,
                                  ),
                                  selected: true,
                                  title: 'Light Mode',
                                  subtitle: 'Bright and clean interface',
                                ),
                              ),
                              Divider(
                                height: 16.0,
                                thickness: 1.0,
                                indent: 16.0,
                                endIndent: 16.0,
                                color: Color(0xFFF0E6D3),
                              ),
                              wrapWithModel(
                                model: _model.themeOptionModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: ThemeOptionWidget(
                                  icon: Icon(
                                    Icons.dark_mode_rounded,
                                    size: 24.0,
                                  ),
                                  selected: false,
                                  title: 'Dark Mode',
                                  subtitle: 'Easy on the eyes at night',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 16.0,
                      ),
                      wrapWithModel(
                        model: _model.sectionLabelModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: SectionLabelWidget(
                          label: 'TEXT SIZE',
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(16.0),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: Color(0xFFF0E6D3),
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Container(
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'pswng8vy' /* Font Size */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.plusJakartaSans(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
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
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    wrapWithModel(
                                      model: _model.fontSizeBtnModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FontSizeBtnWidget(
                                        selected: false,
                                        label: 'S',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.fontSizeBtnModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FontSizeBtnWidget(
                                        selected: true,
                                        label: 'M',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.fontSizeBtnModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FontSizeBtnWidget(
                                        selected: false,
                                        label: 'L',
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 16.0,
                      ),
                      wrapWithModel(
                        model: _model.sectionLabelModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: SectionLabelWidget(
                          label: 'COLORS',
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(16.0),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: Color(0xFFF0E6D3),
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'utacga2f' /* Accent Color */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.plusJakartaSans(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
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
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    wrapWithModel(
                                      model: _model.colorCircleModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ColorCircleWidget(
                                        color: Color(0xFFC9A84C),
                                        selected: true,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.colorCircleModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ColorCircleWidget(
                                        color: Color(0xFF8B5CF6),
                                        selected: false,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.colorCircleModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ColorCircleWidget(
                                        color: Color(0xFFEC4899),
                                        selected: false,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.colorCircleModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ColorCircleWidget(
                                        color: Color(0xFF059669),
                                        selected: false,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.colorCircleModel5,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ColorCircleWidget(
                                        color: Color(0xFF3B82F6),
                                        selected: false,
                                      ),
                                    ),
                                  ],
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 16.0,
                      ),
                      wrapWithModel(
                        model: _model.sectionLabelModel4,
                        updateCallback: () => safeSetState(() {}),
                        child: SectionLabelWidget(
                          label: 'LAYOUT',
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Color(0xFFF0E6D3),
                              width: 1.0,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              wrapWithModel(
                                model: _model.settingsRowModel,
                                updateCallback: () => safeSetState(() {}),
                                child: SettingsRowWidget(
                                  icon: Icon(
                                    Icons.notifications_rounded,
                                    color: Color(0xFFC9A84C),
                                    size: 24.0,
                                  ),
                                  title: 'Compact View',
                                  subtitle: 'Show more content',
                                  child: () => SettingsRowChildWidget(),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.settingsRow2Model,
                                updateCallback: () => safeSetState(() {}),
                                child: SettingsRow2Widget(
                                  icon: Icon(
                                    Icons.view_agenda_rounded,
                                    color: Color(0xFFC9A84C),
                                    size: 24.0,
                                  ),
                                  title: 'Show Animations',
                                  subtitle: 'Smooth transitions',
                                  child: () => SettingsRowChild2Widget(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
