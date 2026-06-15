import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/reading_card_widget.dart';
import '/components/recommendation_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'personalized_recommendations_pag_model.dart';
export 'personalized_recommendations_pag_model.dart';

/// Create PersonalizedRecommendationsPage in FlutterFlow Bliss Menopause app.
///
/// SCAFFOLD: backgroundColor primaryBackground
/// AppBar: back button title "For You" titleLarge bold primaryText elevation
/// 0 centerTitle true
/// BODY: SafeArea > SingleChildScrollView > Column pH20 gap16 start16 end40
///
/// SECTION 1 - Profile Summary
/// Container primary borderRadius24 padding16 Column gap12:
/// - Row gap12 crossCenter: Container 56x56 onPrimary opacity0.2
/// borderRadius16 Icon person_rounded onPrimary s28 / Column crossStart(Text
/// "Hi Sarah 👋" headlineMedium bold onPrimary / Text "Based on your symptoms
/// this week" bodySmall onPrimary opacity0.8)
/// - Divider onPrimary opacity0.2
/// - Row gap8 wrap: 3 tags Container onPrimary opacity0.2 borderRadius20 pH12
/// pV6 Text labelSmall bold onPrimary: "Hot Flashes" / "Poor Sleep" / "Low
/// Energy"
///
/// SECTION 2 - Top Picks
/// Container secondaryBackground borderRadius24 shadow blur12 0x1A000000
/// offset(0,1) padding16 Column gap16:
/// - Row gap8: Box36 alternate radius10 Icon auto_awesome_rounded primary s20
/// / Text "Top Picks For You" titleMedium bold primaryText
/// - 3 cards Container primaryBackground borderRadius16 border alternate w1
/// padding12 Row gap12 crossStart: Container 48x48 alternate borderRadius12
/// Icon primary s22 / Col crossStart gap4(Text title bodyMedium w600
/// primaryText / Text desc bodySmall secondaryText lineHeight1.4 / Container
/// alternate borderRadius20 pH10 pV4 Text category labelSmall bold primary) /
/// Icon arrow_forward_ios_rounded secondaryText s14
/// Cards: self_improvement "Evening Meditation" "Reduces hot flash frequency
/// by 30%" "Wellness" / restaurant_rounded "Anti-Inflammatory Diet" "Supports
/// hormonal balance naturally" "Nutrition" / bedtime_rounded "Sleep Wind-Down
/// Routine" "Improves sleep quality in 2 weeks" "Sleep"
///
/// FONTS: plusJakartaSans Theme Text Styles only. No font family direct
/// reference. No hardcoded hex. Add to PersonalizedRecommendationsPage in
/// FlutterFlow Bliss Menopause app.
///
/// SECTION 3 - Recommended Reading
/// Container secondaryBackground borderRadius24 shadow blur12 0x1A000000
/// offset(0,1) padding16 Column gap16:
/// - Row spaceBetween: Row gap8(Box36 alternate radius10 Icon article_rounded
/// primary s20 / Text "Recommended Reading" titleMedium bold primaryText) /
/// Text "See all" bodySmall w600 primary
/// - 2 cards Container primaryBackground borderRadius16 border alternate w1
/// padding12 Row gap12 crossCenter: Container 56x56 alternate borderRadius12
/// Icon menu_book_rounded primary s28 / Col crossStart gap4(Text title
/// bodyMedium w600 primaryText / Text "5 min read" bodySmall secondaryText /
/// Container alternate borderRadius20 pH10 pV4 Text tag labelSmall bold
/// primary)
/// Cards: "How Magnesium Supports Sleep in Menopause" "Sleep" / "Managing Hot
/// Flashes Naturally" "Wellness"
///
/// SECTION 4 - Bliss Insight
/// Container secondaryBackground borderRadius24 border primary w1 padding16
/// Column gap12:
/// - Row gap8 crossCenter: Container 28x28 primary borderRadius8 Icon
/// tips_and_updates_rounded onPrimary s16 / Text "Bliss Insight" labelSmall
/// bold primary
/// - Text "Your recommendations update every week based on your symptom logs.
/// The more you track, the more personalized your plan becomes. 💛"
/// bodyMedium w500 primaryText lineHeight1.5
///
/// FONTS: plusJakartaSans Theme Text Styles only. No font family direct
/// reference. No hardcoded hex.
class PersonalizedRecommendationsPagWidget extends StatefulWidget {
  const PersonalizedRecommendationsPagWidget({super.key});

  static String routeName = 'PersonalizedRecommendationsPag';
  static String routePath = '/PersonalizedRecommendationsPag';

  @override
  State<PersonalizedRecommendationsPagWidget> createState() =>
      _PersonalizedRecommendationsPagWidgetState();
}

class _PersonalizedRecommendationsPagWidgetState
    extends State<PersonalizedRecommendationsPagWidget> {
  late PersonalizedRecommendationsPagModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PersonalizedRecommendationsPagModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<SymptomLogsRecord>>(
      stream: querySymptomLogsRecord(
        queryBuilder: (symptomLogsRecord) => symptomLogsRecord
            .where(
              'userId',
              isEqualTo: currentUserUid,
            )
            .orderBy('date', descending: true),
        limit: 30,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<SymptomLogsRecord>
            personalizedRecommendationsPagSymptomLogsRecordList =
            snapshot.data!;

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
              iconTheme:
                  IconThemeData(color: FlutterFlowTheme.of(context).primary),
              automaticallyImplyLeading: true,
              title: Text(
                FFLocalizations.of(context).getText(
                  'a06ij0hh' /* For You */,
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
                      fontStyle:
                          FlutterFlowTheme.of(context).titleLarge.fontStyle,
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 40.0),
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
                              padding: EdgeInsets.all(16.0),
                              child: Container(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 56.0,
                                          height: 56.0,
                                          decoration: BoxDecoration(
                                            color: Color(0x33FFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Icon(
                                            Icons.person_rounded,
                                            color: Colors.white,
                                            size: 28.0,
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            AuthUserStreamWidget(
                                              builder: (context) => Text(
                                                'Hi ${currentUserDisplayName}👋',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .playfairDisplay(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineMedium
                                                                  .fontStyle,
                                                          lineHeight: 1.4,
                                                        ),
                                              ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ob2ctk44' /* Based on your symptoms this we... */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .override(
                                                        font: GoogleFonts
                                                            .plusJakartaSans(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xCCFFFFFF),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontStyle,
                                                        lineHeight: 1.4,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ].divide(SizedBox(width: 12.0)),
                                    ),
                                    Divider(
                                      height: 16.0,
                                      thickness: 1.0,
                                      indent: 0.0,
                                      endIndent: 0.0,
                                      color: Color(0x33FFFFFF),
                                    ),
                                    Wrap(
                                      spacing: 8.0,
                                      runSpacing: 8.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0x33FFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 6.0, 12.0, 6.0),
                                            child: Container(
                                              child: Text(
                                                valueOrDefault<String>(
                                                  functions
                                                      .getTopSymptoms(
                                                          personalizedRecommendationsPagSymptomLogsRecordList
                                                              .toList(),
                                                          3)
                                                      .firstOrNull,
                                                  '-',
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
                                                          color: Colors.white,
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
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0x33FFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 6.0, 12.0, 6.0),
                                            child: Container(
                                              child: Text(
                                                valueOrDefault<String>(
                                                  functions
                                                      .getTopSymptoms(
                                                          personalizedRecommendationsPagSymptomLogsRecordList
                                                              .toList(),
                                                          3)
                                                      .elementAtOrNull(1),
                                                  '-',
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
                                                          color: Colors.white,
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
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0x33FFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 6.0, 12.0, 6.0),
                                            child: Container(
                                              child: Text(
                                                valueOrDefault<String>(
                                                  functions
                                                      .getTopSymptoms(
                                                          personalizedRecommendationsPagSymptomLogsRecordList
                                                              .toList(),
                                                          3)
                                                      .elementAtOrNull(2),
                                                  '-',
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
                                                          color: Colors.white,
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
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ].divide(SizedBox(height: 12.0)),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 12.0,
                                  color: Color(0x1A000000),
                                  offset: Offset(
                                    0.0,
                                    1.0,
                                  ),
                                  spreadRadius: 0.0,
                                )
                              ],
                              borderRadius: BorderRadius.circular(24.0),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Container(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Icon(
                                            Icons.auto_awesome_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 20.0,
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'f1mhasax' /* Top Picks For You */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font:
                                                    GoogleFonts.plusJakartaSans(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                                lineHeight: 1.4,
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                    wrapWithModel(
                                      model: _model.recommendationCardModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: RecommendationCardWidget(
                                        icon: Icon(
                                          Icons.self_improvement,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 22.0,
                                        ),
                                        title: 'Evening Meditation',
                                        desc:
                                            'Reduces hot flash frequency by 30%',
                                        category: 'Wellness',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.recommendationCardModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: RecommendationCardWidget(
                                        icon: Icon(
                                          Icons.restaurant_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 22.0,
                                        ),
                                        title: 'Anti-Inflammatory Diet',
                                        desc:
                                            'Supports hormonal balance naturally',
                                        category: 'Nutrition',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.recommendationCardModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: RecommendationCardWidget(
                                        icon: Icon(
                                          Icons.bedtime_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 22.0,
                                        ),
                                        title: 'Sleep Wind-Down Routine',
                                        desc:
                                            'Improves sleep quality in 2 weeks',
                                        category: 'Sleep',
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 16.0)),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 12.0,
                                  color: Color(0x1A000000),
                                  offset: Offset(
                                    0.0,
                                    1.0,
                                  ),
                                  spreadRadius: 0.0,
                                )
                              ],
                              borderRadius: BorderRadius.circular(24.0),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Container(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                shape: BoxShape.rectangle,
                                              ),
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Icon(
                                                Icons.article_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 20.0,
                                              ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '10ae5kdt' /* Recommended Reading */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
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
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
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
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                                AllreadingsPageWidget
                                                    .routeName);
                                          },
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'rm5pn1j3' /* See all */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  font: GoogleFonts
                                                      .plusJakartaSans(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .fontStyle,
                                                  lineHeight: 1.4,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    wrapWithModel(
                                      model: _model.readingCardModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ReadingCardWidget(
                                        title:
                                            'How Magnesium Supports Sleep in Menopause',
                                        tag: 'Sleep',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.readingCardModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ReadingCardWidget(
                                        title: 'Managing Hot Flashes Naturally',
                                        tag: 'Wellness',
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 16.0)),
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
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primary,
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
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Icon(
                                            Icons.tips_and_updates_rounded,
                                            color: Colors.white,
                                            size: 16.0,
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'r758bv9j' /* Bliss Insight */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .override(
                                                font:
                                                    GoogleFonts.plusJakartaSans(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .fontStyle,
                                                lineHeight: 1.4,
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'lb78d8bt' /* Your recommendations update ev... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.plusJakartaSans(
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                            lineHeight: 1.5,
                                          ),
                                    ),
                                  ].divide(SizedBox(height: 12.0)),
                                ),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
