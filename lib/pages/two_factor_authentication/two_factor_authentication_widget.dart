import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/info_box_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'two_factor_authentication_model.dart';
export 'two_factor_authentication_model.dart';

/// Create TwoFactorAuthPage.
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
///   Text "Two-Factor Authentication".
///   Font Plus Jakarta Sans bold size 24
///   color #2D1B0E lineHeight 1.4.
///
/// DESCRIPTION:
/// Text "Add an extra layer of security to
/// your Bliss account."
/// Font Plus Jakarta Sans normal size 14
/// color #8B6F5E lineHeight 1.6.
/// Padding bottom 24.
///
/// SECTION LABEL:
/// Text "SECURITY SETTINGS".
/// Font Plus Jakarta Sans bold size 13 color #8B6F5E.
/// Padding bottom 8.
///
/// CARD:
/// ClipRRect borderRadius 16.
/// Container background white borderRadius 16
/// border width 1 color #F0E6D3.
/// Inner Column mainAxisSize min.
///
/// ROW 1 (last row no divider after):
/// Row mainAxisAlignment spaceBetween padding all 16.
/// Left: Column crossAxisAlignment start gap 3.
///   Text "Enable Two-Factor Authentication"
///   Font Plus Jakarta Sans bold size 15 color #2D1B0E.
///   Text "Secure your account with 2FA"
///   Font Plus Jakarta Sans normal size 13 color #8B6F5E.
/// Right: Switch
///   activeColor white
///   activeTrackColor #C9A84C
///   inactiveThumbColor white
///   inactiveTrackColor #E0D5C8
///   initialValue false.
///
/// INFO BOX (show when switch is OFF):
/// Margin top 16px.
/// Container padding 16px borderRadius 12
/// background #FFF8EC border 1px solid #F0E6D3.
/// Row crossAxisAlignment start gap 10:
///   Icon info_outline color #C9A84C size 18px.
///   Expanded Text: "Two-factor authentication
///   adds an extra security step when you log in.
///   Full SMS verification coming soon."
///   Font Plus Jakarta Sans normal size 12
///   color #8B6F5E lineHeight 1.5.
///
/// INFO BOX (show when switch is ON):
/// Margin top 16px.
/// Container padding 16px borderRadius 12
/// background #F0FDF4 border 1px solid #BBF7D0.
/// Row crossAxisAlignment start gap 10:
///   Icon check_circle_outline color #16A34A size 18px.
///   Expanded Text: "Two-factor authentication
///   is enabled. You will be notified when
///   this feature is fully activated."
///   Font Plus Jakarta Sans normal size 12
///   color #16A34A lineHeight 1.5.
///
/// SAVE BUTTON:
/// Margin top 24px bottom 32px.
/// FFButtonWidget full width infinity.
/// Height 52. BorderRadius 50. Elevation 0.
/// Background color #C9A84C.
/// Text "Save Settings" white bold size 16
/// Font Plus Jakarta Sans.
/// Action: Backend Call Update Document
///   Collection users
///   Document Authenticated Us
class TwoFactorAuthenticationWidget extends StatefulWidget {
  const TwoFactorAuthenticationWidget({super.key});

  static String routeName = 'TwoFactorAuthentication';
  static String routePath = '/twoFactorAuthentication';

  @override
  State<TwoFactorAuthenticationWidget> createState() =>
      _TwoFactorAuthenticationWidgetState();
}

class _TwoFactorAuthenticationWidgetState
    extends State<TwoFactorAuthenticationWidget> {
  late TwoFactorAuthenticationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TwoFactorAuthenticationModel());

    _model.switchValue = false;
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 16.0),
                          child: Container(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Stack(
                                alignment: AlignmentDirectional(-1.0, -1.0),
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Container(
                                      child: FlutterFlowIconButton(
                                        borderRadius: 8.0,
                                        buttonSize: 46.0,
                                        fillColor: Colors.transparent,
                                        icon: Icon(
                                          Icons.arrow_back_rounded,
                                          color: Color(0xFF2D1B0E),
                                          size: 30.0,
                                        ),
                                        onPressed: () async {
                                          context.safePop();
                                        },
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'k2a3f8z5' /* Two-Factor Authentication */,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              font: GoogleFonts.plusJakartaSans(
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .fontStyle,
                                              ),
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .fontStyle,
                                              lineHeight: 1.4,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 24.0),
                          child: Container(
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '3jc6cebq' /* Add an extra layer of security... */,
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
                          child: Container(
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'vqbyj76g' /* SECURITY SETTINGS */,
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
                                Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '59qjark4' /* Enable Two-Factor Authenticati... */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts
                                                      .plusJakartaSans(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFF2D1B0E),
                                                  fontSize: 15.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                  lineHeight: 1.4,
                                                ),
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'a8eptde8' /* Secure your account with 2FA */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts
                                                      .plusJakartaSans(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFF8B6F5E),
                                                  fontSize: 13.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                  lineHeight: 1.4,
                                                ),
                                          ),
                                        ].divide(SizedBox(height: 4.0)),
                                      ),
                                      Switch.adaptive(
                                        value: _model.switchValue!,
                                        onChanged: (newValue) async {
                                          safeSetState(() =>
                                              _model.switchValue = newValue);
                                        },
                                        activeColor: Colors.white,
                                        activeTrackColor: Color(0xFFC9A84C),
                                        inactiveTrackColor: Color(0xFFE0D5C8),
                                        inactiveThumbColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        wrapWithModel(
                          model: _model.infoBoxModel,
                          updateCallback: () => safeSetState(() {}),
                          child: InfoBoxWidget(
                            bgColor: Color(0xFFFFF8EC),
                            borderColor: Color(0xFFF0E6D3),
                            visible: true,
                            iconName: Icon(
                              Icons.info_outline_rounded,
                              size: 18.0,
                            ),
                            iconColor: Color(0xFFC9A84C),
                            message:
                                'Two-factor authentication adds an extra security step when you log in. Full SMS verification coming soon.',
                            textColor: Color(0xFF8B6F5E),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 32.0),
                          child: Container(
                            child: Container(
                              child: Container(
                                width: 0.0,
                                height: 0.0,
                              ),
                            ),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            await currentUserReference!
                                .update(createUsersRecordData(
                              twoFactorEnabled: _model.switchValue,
                            ));
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Settings Saved'),
                                  content: Text(
                                      'Your security preferences have been updated.'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Got it'),
                                    ),
                                  ],
                                );
                              },
                            );
                            context.safePop();
                          },
                          text: FFLocalizations.of(context).getText(
                            'wvlcmrtr' /* Save Settings */,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 52.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFFC9A84C),
                            textStyle: GoogleFonts.plusJakartaSans(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontSize: 17.0,
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
