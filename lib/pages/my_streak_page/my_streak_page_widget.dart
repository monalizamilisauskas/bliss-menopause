import '/auth/firebase_auth/auth_util.dart';
import '/components/milestone_item_widget.dart';
import '/components/stat_column_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'my_streak_page_model.dart';
export 'my_streak_page_model.dart';

/// Create page StreakTrackerPage in FlutterFlow for Bliss Menopause app.
///
/// SCAFFOLD: backgroundColor primaryBackground
/// AppBar: back button, title "My Streak" titleLarge bold primaryText
/// elevation 0
///
/// BODY: SafeArea > Padding h20 > SingleChildScrollView > Column gap16
/// start20 end40
///
/// SECTION 1 - Hero
/// Container: primary borderRadius24 padding24
/// Column center gap12:
/// - Text "CURRENT STREAK" labelSmall onPrimary opacity0.8
/// - Row center gap8:
///   Icon local_fire_department onPrimary s40 /
///   Text "12" headlineLarge bold onPrimary /
///   Text "days" titleMedium onPrimary opacity0.8
/// - Container onPrimary opacity0.15 borderRadius20 pH16 pV8:
///   Text "🔥 Log today to keep streak!" bodySmall onPrimary w500
/// - Divider onPrimary opacity0.2
/// - Row spaceAround:
///   Col("21" titleLarge bold onPrimary / "Best" bodySmall onPrimary)
///   Box w1 h40 onPrimary opacity0.2
///   Col("34" titleLarge bold onPrimary / "Total" bodySmall onPrimary)
///   Box w1 h40 onPrimary opacity0.2
///   Col("85%" titleLarge bold onPrimary / "Consistency" bodySmall onPrimary)
///
/// SECTION 2 - Milestones
/// Container: secondaryBackground borderRadius24 shadow blur12
/// 0x1A000000 offset(0,4) padding16 Column gap16:
/// - Row gap8: Box36 primary10 radius10 Icon emoji_events primary s20 /
///   Text "Milestones" titleMedium bold primaryText
/// - 4 rows Row gap12 crossCenter pV8 Divider between:
///   Achieved: Box44 primary10 radius12 Icon primary s22
///   Locked: Box44 alternate radius12 Icon lock_rounded secondaryText s22
///   Col(name bodyMedium w600 primaryText / desc bodySmall secondaryText)
///   Spacer
///   Achieved: Box primary10 radius20 pH12 pV6 "Done ✓" labelSmall bold
/// primary
///   Locked: Box alternate radius20 pH12 pV6 "Locked" labelSmall
/// secondaryText
///   Rows: "First Week 🌱" 7d done /
///         "Two Weeks 🌿" 14d done /
///         "One Month 🌸" 30d locked /
///         "Champion 🏆" 60d locked
///
/// SECTION 3 - Motivation
/// Container: primary10 borderRadius24 border primary w1 padding20
/// Column gap12:
/// - Row gap8:
///   Box28 primary radius8 Icon favorite_rounded onPrimary s16 /
///   Text "Daily Motivation" labelSmall bold primary
/// - Text "Every day you log is a step toward understanding your body.
///   Amazing! 💛" bodyMedium w500 primaryText lineHeight1.5
///
/// SECTION 4 - Button
/// Full width height52 borderRadius16 backgroundColor primary
/// textColor onPrimary text "Log Today's Symptoms"
/// navigate DailySymptomTracker
///
/// FONTS: plusJakartaSans for all text — use Theme Text Styles only
/// (headlineLarge, titleLarge, titleMedium, bodyMedium, bodySmall,
/// labelSmall).
/// Never reference font family directly in any widget.
/// Never use hardcoded hex — FlutterFlowTheme tokens only.
class MyStreakPageWidget extends StatefulWidget {
  const MyStreakPageWidget({super.key});

  static String routeName = 'MyStreakPage';
  static String routePath = '/MyStreakPage';

  @override
  State<MyStreakPageWidget> createState() => _MyStreakPageWidgetState();
}

class _MyStreakPageWidgetState extends State<MyStreakPageWidget> {
  late MyStreakPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyStreakPageModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            FFLocalizations.of(context).getText(
              'vg1vtsdi' /* My Streak */,
            ),
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  font: GoogleFonts.plusJakartaSans(
                    fontWeight:
                        FlutterFlowTheme.of(context).titleLarge.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).titleLarge.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  lineHeight: 1.4,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SingleChildScrollView(
                    primary: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 16.0, 20.0, 16.0),
                          child: Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    borderRadius: BorderRadius.circular(24.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(24.0),
                                    child: Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Opacity(
                                            opacity: 0.8,
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'zx7e8042' /* CURRENT STREAK */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontStyle,
                                                        lineHeight: 1.4,
                                                      ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons
                                                    .local_fire_department_rounded,
                                                color: Colors.white,
                                                size: 40.0,
                                              ),
                                              AuthUserStreamWidget(
                                                builder: (context) => Text(
                                                  valueOrDefault(
                                                          currentUserDocument
                                                              ?.streak,
                                                          0)
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineLarge
                                                      .override(
                                                        font: GoogleFonts
                                                            .playfairDisplay(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineLarge
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineLarge
                                                                .fontStyle,
                                                        lineHeight: 1.4,
                                                      ),
                                                ),
                                              ),
                                              Opacity(
                                                opacity: 0.8,
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'gy2zt4n5' /* days */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMedium
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .fontStyle,
                                                        lineHeight: 1.4,
                                                      ),
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 8.0)),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Color(0x26FFFFFF),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              shape: BoxShape.rectangle,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 8.0, 16.0, 8.0),
                                              child: Container(
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '5nhh31tf' /* 🔥 Log today to keep streak! */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontStyle,
                                                        lineHeight: 1.4,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Opacity(
                                            opacity: 0.2,
                                            child: Divider(
                                              height: 16.0,
                                              thickness: 1.0,
                                              indent: 0.0,
                                              endIndent: 0.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              AuthUserStreamWidget(
                                                builder: (context) =>
                                                    wrapWithModel(
                                                  model:
                                                      _model.statColumnModel1,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: StatColumnWidget(
                                                    value: valueOrDefault(
                                                            currentUserDocument
                                                                ?.bestStreak,
                                                            0)
                                                        .toString(),
                                                    label: 'Best',
                                                  ),
                                                ),
                                              ),
                                              Opacity(
                                                opacity: 0.2,
                                                child: Container(
                                                  width: 1.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                ),
                                              ),
                                              AuthUserStreamWidget(
                                                builder: (context) =>
                                                    wrapWithModel(
                                                  model:
                                                      _model.statColumnModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: StatColumnWidget(
                                                    value: valueOrDefault(
                                                            currentUserDocument
                                                                ?.totalDaysLogged,
                                                            0)
                                                        .toString(),
                                                    label: 'Total',
                                                  ),
                                                ),
                                              ),
                                              Opacity(
                                                opacity: 0.2,
                                                child: Container(
                                                  width: 1.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                ),
                                              ),
                                              AuthUserStreamWidget(
                                                builder: (context) =>
                                                    wrapWithModel(
                                                  model:
                                                      _model.statColumnModel3,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: StatColumnWidget(
                                                    value:
                                                        '${valueOrDefault(currentUserDocument?.consistencyPercent, 0).toString()}%',
                                                    label: 'Consistency',
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(height: 24.0)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(24.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 36.0,
                                                height: 36.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0x1AD4AF37),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  shape: BoxShape.rectangle,
                                                ),
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Icon(
                                                  Icons.emoji_events_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 20.0,
                                                ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'zi8grqf3' /* Milestones */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMedium
                                                                  .fontStyle,
                                                          lineHeight: 1.4,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 8.0)),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              AuthUserStreamWidget(
                                                builder: (context) =>
                                                    wrapWithModel(
                                                  model: _model
                                                      .milestoneItemModel1,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MilestoneItemWidget(
                                                    isLocked: valueOrDefault(
                                                                currentUserDocument
                                                                    ?.streak,
                                                                0) <
                                                            7
                                                        ? true
                                                        : false,
                                                    icon: Icon(
                                                      Icons.eco_rounded,
                                                      size: 22.0,
                                                    ),
                                                    name: 'First Week 🌱',
                                                    desc: '7 days streak',
                                                    isLast: false,
                                                  ),
                                                ),
                                              ),
                                              AuthUserStreamWidget(
                                                builder: (context) =>
                                                    wrapWithModel(
                                                  model: _model
                                                      .milestoneItemModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MilestoneItemWidget(
                                                    isLocked: valueOrDefault(
                                                                currentUserDocument
                                                                    ?.streak,
                                                                0) <
                                                            14
                                                        ? true
                                                        : false,
                                                    icon: Icon(
                                                      Icons.forest_rounded,
                                                      size: 22.0,
                                                    ),
                                                    name: 'Two Weeks 🌿',
                                                    desc: '14 days streak',
                                                    isLast: false,
                                                  ),
                                                ),
                                              ),
                                              AuthUserStreamWidget(
                                                builder: (context) =>
                                                    wrapWithModel(
                                                  model: _model
                                                      .milestoneItemModel3,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MilestoneItemWidget(
                                                    isLocked: valueOrDefault(
                                                                currentUserDocument
                                                                    ?.streak,
                                                                0) <
                                                            30
                                                        ? true
                                                        : false,
                                                    icon: Icon(
                                                      Icons
                                                          .local_florist_rounded,
                                                      size: 22.0,
                                                    ),
                                                    name: 'One Month 🌸',
                                                    desc: '30 days streak',
                                                    isLast: false,
                                                  ),
                                                ),
                                              ),
                                              AuthUserStreamWidget(
                                                builder: (context) =>
                                                    wrapWithModel(
                                                  model: _model
                                                      .milestoneItemModel4,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MilestoneItemWidget(
                                                    isLocked: valueOrDefault(
                                                                currentUserDocument
                                                                    ?.streak,
                                                                0) <
                                                            60
                                                        ? true
                                                        : false,
                                                    icon: Icon(
                                                      Icons
                                                          .workspace_premium_rounded,
                                                      size: 22.0,
                                                    ),
                                                    name: 'Champion 🏆',
                                                    desc: '60 days streak',
                                                    isLast: true,
                                                  ),
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
                                  decoration: BoxDecoration(
                                    color: Color(0x1AD4AF37),
                                    borderRadius: BorderRadius.circular(24.0),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 28.0,
                                                height: 28.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  shape: BoxShape.rectangle,
                                                ),
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Icon(
                                                  Icons.favorite_rounded,
                                                  color: Colors.white,
                                                  size: 16.0,
                                                ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'hfo3gz73' /* Daily Motivation */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontStyle,
                                                          lineHeight: 1.4,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 8.0)),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              functions.getMotivationalQuote(),
                                              'Every day you log is a step toward understanding your body. Amazing! 💛',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts
                                                      .plusJakartaSans(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                  lineHeight: 1.5,
                                                ),
                                          ),
                                        ].divide(SizedBox(height: 16.0)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () async {
                                              context.pushNamed(
                                                  DailySymptomTrackerWidget
                                                      .routeName);
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              'n6yacg17' /* Log Today's Symptoms  */,
                                            ),
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      50.0, 0.0, 50.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Inter Tight',
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                      ),
                                              elevation: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 16.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 24.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            if ((valueOrDefault(currentUserDocument?.streak, 0) == 7) ||
                    (valueOrDefault(currentUserDocument?.streak, 0) == 14) ||
                    (valueOrDefault(currentUserDocument?.streak, 0) == 30) ||
                    (valueOrDefault(currentUserDocument?.streak, 0) == 60)
                ? true
                : false)
              AuthUserStreamWidget(
                builder: (context) => Lottie.network(
                  'https://assets2.lottiefiles.com/packages/lf20_rovf9gzu.json',
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  fit: BoxFit.contain,
                  repeat: false,
                  animate: true,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
