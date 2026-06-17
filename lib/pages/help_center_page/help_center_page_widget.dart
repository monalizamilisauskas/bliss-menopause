import '/components/faq_card_widget.dart';
import '/components/help_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'help_center_page_model.dart';
export 'help_center_page_model.dart';

/// Create HelpCenterPage.
///
/// Background #FDF6F0. Safe area enabled. Back arrow top left navigates back.
/// Title "Help Center" bold size 24 color #2D1B0E centered margin top 16px.
/// Padding horizontal 16px throughout. Space between all sections 16px.
/// Search bar — White container border radius 50px border 1px solid #F0E6D3
/// padding horizontal 16px height 48px. Row: icon search_rounded color
/// #8B6F5E size 20px, Text "Search for help..." color #8B6F5E size 14px.
/// Margin bottom 8px. Section 1 — Label "Getting Started" bold size 13 color
/// #8B6F5E margin bottom 8px. White card border radius 16px border 1px solid
/// #F0E6D3 padding 0px. Each row: padding 16px, divider 1px #F0E6D3 between
/// items. Row: icon left color #C9A84C size 22px, title bold 15px color
/// #2D1B0E + subtitle 13px color #8B6F5E, arrow right color #C9A84C:
/// play_circle_rounded: "How to use Bliss" / "Quick start guide"
/// track_changes_rounded: "Symptom Tracking" / "Log your daily symptoms"
/// psychology_rounded: "AI Health Coach" / "Get personalized guidance"
/// calendar_month_rounded: "Cycle Tracking" / "Understanding your cycle"
/// Section 2 — Label "Account & Billing" bold size 13 color #8B6F5E margin
/// bottom 8px. Same card style with dividers:  manage_accounts_rounded:
/// "Manage Subscription" / "Upgrade or cancel your plan" payment_rounded:
/// "Billing & Payments" / "Invoices and payment methods" restore_rounded:
/// "Restore Purchases" / "Recover previous subscriptions"  Section 3 — Label
/// "Contact Us" bold size 13 color #8B6F5E margin bottom 8px. Same card style
/// with dividers:  email_rounded: "Email Support" /
/// "hello@blissmenopause.com" chat_rounded: "Live Chat" / "Available Mon-Fri
/// 9am-5pm EST" with green badge "Online" background #D1FAE5 text #059669
/// forum_rounded: "Community Forum" / "Connect with other users"  Section 4 —
/// FAQ cards — Label "Frequently Asked" bold size 13 color #8B6F5E margin
/// bottom 8px. 3 white cards border radius 16px border 1px solid #F0E6D3
/// padding 16px each with spacing 8px between:  Card 1: "How do I track my
/// symptoms?" bold 14px color #2D1B0E. Text "Go to Daily Tracker on your home
/// screen and tap the + button to log symptoms." size 13px color #8B6F5E.
/// Card 2: "Can I export my health data?" bold 14px. Text "Yes! Go to Profile
/// → Privacy & Security → Export My Data." size 13px color #8B6F5E. Card 3:
/// "How does the AI Coach work?" bold 14px. Text "Our AI analyzes your
/// symptom patterns to provide personalized wellness recommendations." size
/// 13px color #8B6F5E.  Use FlutterFlowTheme tokens.
/// GoogleFonts.plusJakartaSans. Safe area enabled.
class HelpCenterPageWidget extends StatefulWidget {
  const HelpCenterPageWidget({super.key});

  static String routeName = 'HelpCenterPage';
  static String routePath = '/HelpCenterPage';

  @override
  State<HelpCenterPageWidget> createState() => _HelpCenterPageWidgetState();
}

class _HelpCenterPageWidgetState extends State<HelpCenterPageWidget> {
  late HelpCenterPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HelpCenterPageModel());

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
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 32.0),
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
                                alignment: AlignmentDirectional(-1.0, 0.0),
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
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Container(
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '34bamviu' /* Help Center */,
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
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
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
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: Container(
                          child: Container(
                            height: 48.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(50.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Color(0xFFF0E6D3),
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.search_rounded,
                                      color: Color(0xFF8B6F5E),
                                      size: 20.0,
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'n4f3vsqx' /* Search for help... */,
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
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                            lineHeight: 1.4,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 16.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'jb625084' /* GETTING STARTED */,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      wrapWithModel(
                                        model: _model.helpItemModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: HelpItemWidget(
                                          icon: Icon(
                                            Icons.play_circle_rounded,
                                            color: Color(0xFFC9A84C),
                                            size: 22.0,
                                          ),
                                          title: 'How to use Bliss',
                                          subtitle: 'Quick start guide',
                                          showBadge: false,
                                          last: false,
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.helpItemModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: HelpItemWidget(
                                          icon: Icon(
                                            Icons.track_changes_rounded,
                                            color: Color(0xFFC9A84C),
                                            size: 22.0,
                                          ),
                                          title: 'Symptom Tracking',
                                          subtitle: 'Log your daily symptoms',
                                          showBadge: false,
                                          last: false,
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.helpItemModel3,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: HelpItemWidget(
                                          icon: Icon(
                                            Icons.psychology_rounded,
                                            color: Color(0xFFC9A84C),
                                            size: 22.0,
                                          ),
                                          title: 'AI Health Coach',
                                          subtitle: 'Get personalized guidance',
                                          showBadge: false,
                                          last: false,
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.helpItemModel4,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: HelpItemWidget(
                                          icon: Icon(
                                            Icons.calendar_month_rounded,
                                            color: Color(0xFFC9A84C),
                                            size: 22.0,
                                          ),
                                          title: 'Cycle Tracking',
                                          subtitle: 'Understanding your cycle',
                                          showBadge: false,
                                          last: true,
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'ykezhzau' /* ACCOUNT & BILLING */,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      wrapWithModel(
                                        model: _model.helpItemModel5,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: HelpItemWidget(
                                          icon: Icon(
                                            Icons.manage_accounts_rounded,
                                            color: Color(0xFFC9A84C),
                                            size: 22.0,
                                          ),
                                          title: 'Manage Subscription',
                                          subtitle:
                                              'Upgrade or cancel your plan',
                                          showBadge: false,
                                          last: false,
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.helpItemModel6,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: HelpItemWidget(
                                          icon: Icon(
                                            Icons.payment_rounded,
                                            color: Color(0xFFC9A84C),
                                            size: 22.0,
                                          ),
                                          title: 'Billing & Payments',
                                          subtitle:
                                              'Invoices and payment methods',
                                          showBadge: false,
                                          last: false,
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.helpItemModel7,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: HelpItemWidget(
                                          icon: Icon(
                                            Icons.restore_rounded,
                                            color: Color(0xFFC9A84C),
                                            size: 22.0,
                                          ),
                                          title: 'Restore Purchases',
                                          subtitle:
                                              'Recover previous subscriptions',
                                          showBadge: false,
                                          last: true,
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  's1ct85jb' /* CONTACT US */,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      wrapWithModel(
                                        model: _model.helpItemModel8,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: HelpItemWidget(
                                          icon: Icon(
                                            Icons.email_rounded,
                                            color: Color(0xFFC9A84C),
                                            size: 22.0,
                                          ),
                                          title: 'Email Support',
                                          subtitle: 'hello@blissmenopause.com',
                                          showBadge: false,
                                          last: false,
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.helpItemModel9,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: HelpItemWidget(
                                          icon: Icon(
                                            Icons.chat_rounded,
                                            color: Color(0xFFC9A84C),
                                            size: 22.0,
                                          ),
                                          title: 'Live Chat',
                                          subtitle:
                                              'Available Mon-Fri 9am-5pm EST',
                                          showBadge: true,
                                          last: false,
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.helpItemModel10,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: HelpItemWidget(
                                          icon: Icon(
                                            Icons.forum_rounded,
                                            color: Color(0xFFC9A84C),
                                            size: 22.0,
                                          ),
                                          title: 'Community Forum',
                                          subtitle: 'Connect with other users',
                                          showBadge: false,
                                          last: true,
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
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              's8ep579f' /* FREQUENTLY ASKED */,
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
                          wrapWithModel(
                            model: _model.faqCardModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: FaqCardWidget(
                              question: 'How do I track my symptoms?',
                              answer:
                                  'Go to Daily Tracker on your home screen and tap the + button to log symptoms.',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.faqCardModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: FaqCardWidget(
                              question: 'Can I export my health data?',
                              answer:
                                  'Yes! Go to Profile → Privacy & Security → Export My Data.',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.faqCardModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: FaqCardWidget(
                              question: 'How does the AI Coach work?',
                              answer:
                                  'Our AI analyzes your symptom patterns to provide personalized wellness recommendations.',
                            ),
                          ),
                        ].divide(SizedBox(height: 8.0)),
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
