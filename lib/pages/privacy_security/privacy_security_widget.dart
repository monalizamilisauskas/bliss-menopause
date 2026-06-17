import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/security_item2_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'privacy_security_model.dart';
export 'privacy_security_model.dart';

/// Create PrivacySecurityPage.
///
/// Background #FDF6F0. Safe area enabled. Back arrow top left navigates back.
/// Title "Privacy & Security" bold size 24 color #2D1B0E centered margin top
/// 16px. Padding horizontal 16px throughout. Space between all sections 16px.
/// Section 1 — Label "Account Security" bold size 13 color #8B6F5E margin
/// bottom 8px. White card border radius 16px border 1px solid #F0E6D3 padding
/// 0px. Each row inside: padding 16px, divider 1px #F0E6D3 between items. Row
/// layout: icon left color #C9A84C size 22px, column title bold 15px color
/// #2D1B0E + subtitle 13px color #8B6F5E, arrow right color #C9A84C:
/// lock_rounded: "Change Password" / "Update your password" phone_rounded:
/// "Two-Factor Authentication" / "Add extra security" devices_rounded:
/// "Active Sessions" / "Manage logged-in devices"  Section 2 — Label "Privacy
/// Controls" bold size 13 color #8B6F5E margin bottom 8px. Same card style
/// with dividers between items:  visibility_off_rounded: "Profile Visibility"
/// / "Control who sees your data" download_rounded: "Export My Data" /
/// "Download your health records" delete_forever_rounded: "Delete Account" /
/// "Permanently remove account" title color #DC2626  Section 3 — Label
/// "Legal" bold size 13 color #8B6F5E margin bottom 8px. Same card style with
/// dividers:  description_rounded: "Privacy Policy" / "How we use your data"
/// gavel_rounded: "Terms of Service" / "Our terms and conditions"
/// cookie_rounded: "Cookie Settings" / "Manage preferences"  Button "Save
/// Changes" background #C9A84C text white bold rounded 50px full width height
/// 52px margin top 24px margin bottom 32px. Use FlutterFlowTheme tokens.
/// GoogleFonts.plusJakartaSans. Safe area enabled.
class PrivacySecurityWidget extends StatefulWidget {
  const PrivacySecurityWidget({super.key});

  static String routeName = 'PrivacySecurity';
  static String routePath = '/PrivacySecurity';

  @override
  State<PrivacySecurityWidget> createState() => _PrivacySecurityWidgetState();
}

class _PrivacySecurityWidgetState extends State<PrivacySecurityWidget> {
  late PrivacySecurityModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacySecurityModel());

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
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 16.0),
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Stack(
                                    alignment: AlignmentDirectional(-1.0, -1.0),
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: FlutterFlowIconButton(
                                              borderRadius: 8.0,
                                              buttonSize: 40.0,
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
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Container(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: Container(
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'g5o289lr' /* Privacy & Security */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF2D1B0E),
                                                          fontSize: 24.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                          lineHeight: 1.4,
                                                        ),
                                              ),
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
                                  0.0, 0.0, 0.0, 16.0),
                              child: Container(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'ty1yscyr' /* ACCOUNT SECURITY */,
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
                                            color: Color(0xFF8B6F5E),
                                            fontSize: 13.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                            lineHeight: 1.4,
                                          ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(16.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                            color: Color(0xFFF0E6D3),
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                    ChangePasswordWidget
                                                        .routeName);
                                              },
                                              child: wrapWithModel(
                                                model:
                                                    _model.securityItemModel1,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: SecurityItem2Widget(
                                                  icon: Icon(
                                                    Icons.lock_rounded,
                                                    color: Color(0xFFC9A84C),
                                                    size: 22.0,
                                                  ),
                                                  title: 'Change Password',
                                                  isDestructive: false,
                                                  subtitle:
                                                      'Update your password',
                                                  isLast: false,
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                    TwoFactorAuthenticationWidget
                                                        .routeName);
                                              },
                                              child: wrapWithModel(
                                                model:
                                                    _model.securityItemModel2,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: SecurityItem2Widget(
                                                  icon: Icon(
                                                    Icons.phone_rounded,
                                                    color: Color(0xFFC9A84C),
                                                    size: 22.0,
                                                  ),
                                                  title:
                                                      'Two-Factor Authentication',
                                                  isDestructive: false,
                                                  subtitle:
                                                      'Add extra security',
                                                  isLast: false,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 8.0)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 16.0),
                              child: Container(
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '8c0ecmxq' /* PRIVACY CONTROLS */,
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
                                            color: Color(0xFF8B6F5E),
                                            fontSize: 13.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                            lineHeight: 1.4,
                                          ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(16.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                            color: Color(0xFFF0E6D3),
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                    ProfileVisibilityPageWidget
                                                        .routeName);
                                              },
                                              child: wrapWithModel(
                                                model:
                                                    _model.securityItemModel3,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: SecurityItem2Widget(
                                                  icon: Icon(
                                                    Icons
                                                        .visibility_off_rounded,
                                                    color: Color(0xFFC9A84C),
                                                    size: 22.0,
                                                  ),
                                                  title: 'Profile Visibility',
                                                  isDestructive: false,
                                                  subtitle:
                                                      'Control who sees your data',
                                                  isLast: false,
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text(
                                                          'Export Requested'),
                                                      content: Text(
                                                          'Your export request has been received.  Our team will send your health records  to your registered email within 48 hours.  Note: Automated export coming soon.'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: Text('Got it'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );

                                                await currentUserReference!
                                                    .update(
                                                        createUsersRecordData(
                                                  exportRequestedAt:
                                                      getCurrentTimestamp,
                                                  exportStatus: 'pending',
                                                ));
                                              },
                                              child: wrapWithModel(
                                                model:
                                                    _model.securityItemModel4,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: SecurityItem2Widget(
                                                  icon: Icon(
                                                    Icons.download_rounded,
                                                    color: Color(0xFFC9A84C),
                                                    size: 22.0,
                                                  ),
                                                  title: 'Export My Data',
                                                  isDestructive: false,
                                                  subtitle:
                                                      'Download your health records',
                                                  isLast: false,
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                var confirmDialogResponse =
                                                    await showDialog<bool>(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title: Text(
                                                                  'Delete Account'),
                                                              content: Text(
                                                                  'This action is permanent and cannot be undone. All your health data will be permanently deleted.'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext,
                                                                          false),
                                                                  child: Text(
                                                                      'Cancel'),
                                                                ),
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext,
                                                                          true),
                                                                  child: Text(
                                                                      'Delete Forever'),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        ) ??
                                                        false;
                                                if (confirmDialogResponse) {
                                                  await currentUserReference!
                                                      .delete();
                                                  await authManager
                                                      .deleteUser(context);

                                                  context.pushNamed(
                                                      LoginInWidget.routeName);
                                                }
                                              },
                                              child: wrapWithModel(
                                                model:
                                                    _model.securityItemModel5,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: SecurityItem2Widget(
                                                  icon: Icon(
                                                    Icons
                                                        .delete_forever_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    size: 22.0,
                                                  ),
                                                  title: 'Delete Account',
                                                  isDestructive: true,
                                                  subtitle:
                                                      'Permanently remove account',
                                                  isLast: true,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 8.0)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 24.0),
                              child: Container(
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '7nkud72e' /* LEGAL */,
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
                                            color: Color(0xFF8B6F5E),
                                            fontSize: 13.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                            lineHeight: 1.4,
                                          ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(16.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                            color: Color(0xFFF0E6D3),
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await launchURL(
                                                    'https://sites.google.com/view/privacy-policy-bliss-menopause/home');
                                              },
                                              child: wrapWithModel(
                                                model:
                                                    _model.securityItemModel6,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: SecurityItem2Widget(
                                                  icon: Icon(
                                                    Icons.description_rounded,
                                                    color: Color(0xFFC9A84C),
                                                    size: 22.0,
                                                  ),
                                                  title: 'Privacy Policy',
                                                  isDestructive: false,
                                                  subtitle:
                                                      'How we use your data',
                                                  isLast: false,
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await launchURL(
                                                    'https://sites.google.com/view/termsofserviceblissmenopause/home');
                                              },
                                              child: wrapWithModel(
                                                model:
                                                    _model.securityItemModel7,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: SecurityItem2Widget(
                                                  icon: Icon(
                                                    Icons.gavel_rounded,
                                                    color: Color(0xFFC9A84C),
                                                    size: 22.0,
                                                  ),
                                                  title: 'Terms of Service',
                                                  isDestructive: false,
                                                  subtitle:
                                                      'Our terms and conditions',
                                                  isLast: false,
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await launchURL(
                                                    'https://sites.google.com/view/cookie-settings-bliss-menopaus/home');
                                              },
                                              child: wrapWithModel(
                                                model:
                                                    _model.securityItemModel8,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: SecurityItem2Widget(
                                                  icon: Icon(
                                                    Icons.cookie_rounded,
                                                    color: Color(0xFFC9A84C),
                                                    size: 22.0,
                                                  ),
                                                  title: 'Cookie Settings',
                                                  isDestructive: false,
                                                  subtitle:
                                                      'Manage preferences',
                                                  isLast: true,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 8.0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            context.safePop();
                          },
                          text: FFLocalizations.of(context).getText(
                            'ge84qcgi' /* Save Changes */,
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
                              fontSize: 16.0,
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
