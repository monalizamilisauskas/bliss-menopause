import '/components/offer_card_widget.dart';
import '/components/stat_item2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'subscription_win_back_pag_model.dart';
export 'subscription_win_back_pag_model.dart';

/// Create SubscriptionWinbackPage in FlutterFlow Bliss Menopause app.
///
/// SCAFFOLD: backgroundColor primaryBackground
/// AppBar: back button title "Before You Go" titleLarge bold primaryText
/// elevation 0 centerTitle true
///
/// BODY: SafeArea > SingleChildScrollView > Column gap16 pH20 start20 end40
///
/// SECTION 1 - Hero
/// Container primary borderRadius24 padding16 Column center gap12:
/// Container 80x80 onPrimary opacity0.2 borderRadius24 Icon favorite_rounded
/// onPrimary s40
/// Text "We'd hate to see you go 💛" headlineMedium bold onPrimary center
/// Text "You've been on a 12-day streak. Your wellness journey is just
/// getting started." bodyMedium onPrimary opacity0.9 center
/// Divider onPrimary opacity0.2
/// Row spaceAround: Col("12" titleLarge bold onPrimary / "Day streak"
/// bodySmall onPrimary) Box w1 h40 onPrimary opacity0.2 Col("34" titleLarge
/// bold onPrimary / "Logs made" bodySmall onPrimary) Box w1 h40 onPrimary
/// opacity0.2 Col("3" titleLarge bold onPrimary / "Insights" bodySmall
/// onPrimary)
///
/// FONTS: plusJakartaSans Theme Text Styles only. No hardcoded hex.
class SubscriptionWinBackPagWidget extends StatefulWidget {
  const SubscriptionWinBackPagWidget({super.key});

  static String routeName = 'SubscriptionWinBackPag';
  static String routePath = '/SubscriptionWinBackPag';

  @override
  State<SubscriptionWinBackPagWidget> createState() =>
      _SubscriptionWinBackPagWidgetState();
}

class _SubscriptionWinBackPagWidgetState
    extends State<SubscriptionWinBackPagWidget> {
  late SubscriptionWinBackPagModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubscriptionWinBackPagModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'Before You Go',
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
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 40.0),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x33FFFFFF),
                                    borderRadius: BorderRadius.circular(24.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Icon(
                                    Icons.favorite_rounded,
                                    color: Colors.white,
                                    size: 40.0,
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'We\'d hate to see you go 💛',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            font: GoogleFonts.playfairDisplay(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .fontStyle,
                                            ),
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .fontStyle,
                                            lineHeight: 1.4,
                                          ),
                                    ),
                                    Text(
                                      'You\'ve been on a 12-day streak. Your wellness journey is just getting started.',
                                      textAlign: TextAlign.center,
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
                                            color: Color(0xE6FFFFFF),
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
                                  ].divide(SizedBox(height: 8.0)),
                                ),
                                Divider(
                                  height: 16.0,
                                  thickness: 1.0,
                                  indent: 0.0,
                                  endIndent: 0.0,
                                  color: Color(0x33FFFFFF),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    wrapWithModel(
                                      model: _model.statItemModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: StatItem2Widget(
                                        value: '12',
                                        label: 'Day streak',
                                      ),
                                    ),
                                    Container(
                                      width: 1.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Color(0x33FFFFFF),
                                        shape: BoxShape.rectangle,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.statItemModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: StatItem2Widget(
                                        value: '34',
                                        label: 'Logs made',
                                      ),
                                    ),
                                    Container(
                                      width: 1.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Color(0x33FFFFFF),
                                        shape: BoxShape.rectangle,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.statItemModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: StatItem2Widget(
                                        value: '3',
                                        label: 'Insights',
                                      ),
                                    ),
                                  ],
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Special offers just for you',
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  font: GoogleFonts.plusJakartaSans(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                  lineHeight: 1.4,
                                ),
                          ),
                          wrapWithModel(
                            model: _model.offerCardModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: OfferCardWidget(
                              icon: Icon(
                                Icons.percent_rounded,
                                size: 24.0,
                              ),
                              title: 'Get 50% Off',
                              subtitle:
                                  'Apply a discount to your next 3 months',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.offerCardModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: OfferCardWidget(
                              icon: Icon(
                                Icons.stars_rounded,
                                size: 24.0,
                              ),
                              title: 'Extend Free Trial',
                              subtitle: 'Get 7 more days to explore premium',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.offerCardModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: OfferCardWidget(
                              icon: Icon(
                                Icons.help,
                                size: 24.0,
                              ),
                              title: 'Talk to a Specialist',
                              subtitle:
                                  'Get personalized help with your symptoms',
                            ),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Container(
                          child: Text(
                            'Your data and progress will be saved if you decide to come back later.',
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      font: GoogleFonts.plusJakartaSans(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                      lineHeight: 1.4,
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
      ),
    );
  }
}
