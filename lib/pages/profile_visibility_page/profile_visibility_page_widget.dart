import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/visibility_row2_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'profile_visibility_page_model.dart';
export 'profile_visibility_page_model.dart';

/// Create ProfileVisibilityPage.
///
/// SCAFFOLD:
/// Background color #FDF6F0.
/// Safe Area Top ON. Safe Area Bottom ON.
/// Body: SingleChildScrollView > Column
/// crossAxisAlignment stretch, mainAxisSize min.
/// Outer padding: left 16, right 16, bottom 32.
///
/// HEADER:
/// Stack alignment center. Padding top 16 bottom 16.
/// Child 1: Align left.
///   FlutterFlowIconButton borderRadius 8 buttonSize 40
///   fillColor transparent.
///   Icon arrow_back_sharp color #2D1B0E size 30.
///   Action: Navigate Back.
/// Child 2: Align center.
///   Text "Profile Visibility".
///   Font Plus Jakarta Sans bold size 24
///   color #2D1B0E lineHeight 1.4.
///
/// DESCRIPTION:
/// Text "Control what other Bliss community members
/// can see about you."
/// Font Plus Jakarta Sans normal size 14
/// color #8B6F5E lineHeight 1.6.
/// Padding bottom 24.
///
/// SECTION LABEL:
/// Text "VISIBILITY SETTINGS".
/// Font Plus Jakarta Sans bold size 13 color #8B6F5E.
/// Padding bottom 8.
///
/// CARD:
/// ClipRRect borderRadius 16.
/// Container background white borderRadius 16
/// border width 1 color #F0E6D3.
/// Inner Column mainAxisSize min.
///
/// ROW 1 inside card:
/// Row mainAxisAlignment spaceBetween.
/// Padding all sides 16.
/// Left side: Column crossAxisAlignment start gap 3.
///   Text "Show My Name"
///   Font Plus Jakarta Sans bold size 15 color #2D1B0E.
///   Text "Display name in community"
///   Font Plus Jakarta Sans normal size 13 color #8B6F5E.
/// Right side: Switch
///   activeColor white
///   activeTrackColor #C9A84C
///   inactiveThumbColor white
///   inactiveTrackColor #E0D5C8
///   initialValue true.
/// Below row: Divider height 1 thickness 1 color #F0E6D3.
///
/// ROW 2 inside card:
/// Row mainAxisAlignment spaceBetween.
/// Padding all sides 16.
/// Left side: Column crossAxisAlignment start gap 3.
///   Text "Show My Age"
///   Font Plus Jakarta Sans bold size 15 color #2D1B0E.
///   Text "Display age on public profile"
///   Font Plus Jakarta Sans normal size 13 color #8B6F5E.
/// Right side: Switch
///   activeColor white
///   activeTrackColor #C9A84C
///   inactiveThumbColor white
///   inactiveTrackColor #E0D5C8
///   initialValue false.
/// Below row: Divider height 1 thickness 1 color #F0E6D3.
///
/// ROW 3 inside card:
/// Row mainAxisAlignment spaceBetween.
/// Padding all sides 16.
/// Left side: Column crossAxisAlignment start gap 3.
///   Text "Show My Symptoms"
///   Font Plus Jakarta Sans bold size 15 color #2D1B0E.
///   Text "Share symptoms with community"
///   Font Plus Jakarta Sans normal size 13 color #8B6F5E.
/// Right side: Switch
///   activeColor white
///   activeTrackColor #C9A84C
///   inactiveThumbColor white
///   inactiveTrackColor #E0D5C8
///   initialValue false.
/// Below row: Divider height 1 thickness 1 color #F0E6D3.
///
/// ROW 4 inside card (last row no divider after):
/// Row mainAxisAlignment spaceBetween.
/// Padding all sides 16.
/// Left side: Column crossAxisAlignment start gap 3.
///   Text "Show My Progress"
///   Font Plus Jakarta Sans bold size 15 color #2D1B0E.
///   Text "Display achievements and progress"
///   Font Plus Jakarta Sans normal size 13 color #8B6F5E.
/// Right side: Switch
///   activeColor white
///   activeTrackColor #C9A84C
///   inactiveThumbColor white
///   inactiveTrackColor #E0D5C8
///   initialValue true.
///
/// Spacing between CARD and INFO BOX: 16px.
///
/// INFO BOX:
/// Container padding all 16.
/// borderRadius 12.
/// background color #FFF8EC.
/// border width 1 color #F0E6D3.
/// Inner Row crossAxisAlignment start.
///   Icon info_outline color #C9A84C size 18.
///   SizedBox width 10.
///   Expanded Text "Your health data is always private.
///   These settings only affect your community profile."
///   Font Plus Jakarta Sans normal size 12 color #8B6F5E
///   lineHeight 1.5.
///
/// Spacing between INFO BOX and BUTTON: 24px.
///
/// SAVE BUTTON:
/// FFButtonWidget full width infinity.
/// Height 52. BorderRadius 50. Elevation 0.
/// Background color #C9A84C.
/// Text "Save Changes" white bold size 16
/// Font Plus Jakarta Sans.
class ProfileVisibilityPageWidget extends StatefulWidget {
  const ProfileVisibilityPageWidget({super.key});

  static String routeName = 'ProfileVisibilityPage';
  static String routePath = '/profileVisibilityPage';

  @override
  State<ProfileVisibilityPageWidget> createState() =>
      _ProfileVisibilityPageWidgetState();
}

class _ProfileVisibilityPageWidgetState
    extends State<ProfileVisibilityPageWidget> {
  late ProfileVisibilityPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileVisibilityPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 32.0),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 72.0,
                          child: Stack(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            children: [
                              Container(
                                alignment: AlignmentDirectional(0.0, 0.0),
                              ),
                              Container(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderRadius: 8.0,
                                      buttonSize: 46.0,
                                      fillColor: Colors.transparent,
                                      icon: Icon(
                                        Icons.arrow_back_sharp,
                                        color: Color(0xFF2D1B0E),
                                        size: 30.0,
                                      ),
                                      onPressed: () async {
                                        context.safePop();
                                      },
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          50.0, 0.0, 0.0, 0.0),
                                      child: Stack(
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'z4ifm1od' /* Profile Visibility */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  font: GoogleFonts
                                                      .plusJakartaSans(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                  ),
                                                  fontSize: 23.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 24.0),
                            child: Container(
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'fnlaqko5' /* Control what other Bliss commu... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.plusJakartaSans(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF8B6F5E),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                      lineHeight: 1.6,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
                          child: Container(
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'yo5dpmhm' /* VISIBILITY SETTINGS */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF8B6F5E),
                                    fontSize: 13.0,
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
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Container(
                            decoration: BoxDecoration(
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
                                  model: _model.visibilityRowModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: VisibilityRow2Widget(
                                    title: 'Show My Name',
                                    subtitle: 'Display name in community',
                                    isActive: true,
                                    isLast: false,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.visibilityRowModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: VisibilityRow2Widget(
                                    title: 'Show My Age',
                                    subtitle: 'Display age on public profile',
                                    isActive: false,
                                    isLast: false,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.visibilityRowModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: VisibilityRow2Widget(
                                    title: 'Show My Symptoms',
                                    subtitle: 'Share symptoms with community',
                                    isActive: false,
                                    isLast: false,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.visibilityRowModel4,
                                  updateCallback: () => safeSetState(() {}),
                                  child: VisibilityRow2Widget(
                                    title: 'Show My Progress',
                                    subtitle:
                                        'Display achievements and progress',
                                    isActive: true,
                                    isLast: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 16.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFFFF8EC),
                            borderRadius: BorderRadius.circular(12.0),
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.info_outline,
                                    color: Color(0xFFC9A84C),
                                    size: 18.0,
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'udd79rg5' /* Your health data is always pri... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.plusJakartaSans(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: Color(0xFF8B6F5E),
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
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
                        Container(
                          height: 24.0,
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            await currentUserReference!
                                .update(createUsersRecordData(
                              visibilityShowName:
                                  _model.visibilityRowModel1.switchValue,
                              visibilityShowAge:
                                  _model.visibilityRowModel2.switchValue,
                              visibilityShowSymptoms:
                                  _model.visibilityRowModel3.switchValue,
                              visibilityShowProgress:
                                  _model.visibilityRowModel4.switchValue,
                            ));
                            context.pop();
                          },
                          text: FFLocalizations.of(context).getText(
                            'chmqe84v' /* Save Changes */,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 52.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFFC9A84C),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.plusJakartaSans(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(50.0),
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
      ),
    );
  }
}
