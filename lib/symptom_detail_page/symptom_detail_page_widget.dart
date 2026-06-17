import '/components/daily_bar_widget.dart';
import '/components/log_entry_widget.dart';
import '/components/stat_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'symptom_detail_page_model.dart';
export 'symptom_detail_page_model.dart';

/// Create SymptomDetailPage in FlutterFlow Bliss Menopause app.
///
/// SCAFFOLD: backgroundColor primaryBackground
/// AppBar: back button, title "Symptom Detail" titleLarge bold primaryText
/// elevation 0 centerTitle true
///
/// BODY: SafeArea > Expanded > Padding h16 > SingleChildScrollView >
/// Column gap16 start20 end40
///
/// SECTION 1 - Hero Card
/// Container: primary borderRadius24 padding16
/// Column gap12:
/// - Row gap12 crossCenter:
///   Container 56x56 onPrimary opacity0.2 borderRadius16
///   Icon hot_tub_rounded onPrimary s28 /
///   Column crossStart(
///     Text "Hot Flashes" headlineMedium bold onPrimary /
///     Text "Last logged today" bodySmall onPrimary opacity0.8)
/// - Divider onPrimary opacity0.2
/// - Row spaceAround:
///   Col("3x" titleLarge bold onPrimary / "Today" bodySmall onPrimary
/// opacity0.8)
///   Box w1 h40 onPrimary opacity0.2
///   Col("Moderate" titleLarge bold onPrimary / "Intensity" bodySmall
/// onPrimary opacity0.8)
///   Box w1 h40 onPrimary opacity0.2
///   Col("7d" titleLarge bold onPrimary / "Streak" bodySmall onPrimary
/// opacity0.8)
///
/// SECTION 2 - What is this?
/// Container: secondaryBackground borderRadius24 shadow blur12
/// 0x1A000000 offset(0,1) padding16
/// Column gap12:
/// - Row gap8 crossCenter:
///   Box36 alternate radius10 Icon info_rounded primary s20 /
///   Text "What is this?" titleMedium bold primaryText
/// - Text "Hot flashes are sudden feelings of warmth caused by declining
///   estrogen affecting your body's temperature regulation."
///   bodyMedium primaryText lineHeight1.5
/// - Container alternate borderRadius16 padding12:
///   Row gap8 crossStart:
///   Icon tips_and_updates_rounded primary s20 marginTop2 /
///   Text "Most common between 6–8am and after meals. Try cooling
///   breathwork." bodySmall primaryText lineHeight1.4
///
/// SECTION 3 - This Week
/// Container: secondaryBackground borderRadius24 shadow blur12
/// 0x1A000000 offset(0,1) padding16
/// Column gap16:
/// - Row gap8 crossCenter:
///   Box36 primaryBackground radius10 Icon bar_chart_rounded primary s20 /
///   Text "This Week" titleMedium bold primaryText
/// - Row spaceBetween crossEnd:
///   7 columns each Col gap4 crossCenter:
///     Container w32 primary borderRadius6 (heights: 30/55/40/70/50/80/20) /
///     Text day labelSmall secondaryText
///   Days: Mon/Tue/Wed/Thu/Fri/Sat/Sun
///
/// SECTION 4 - Recent Logs
/// Container: secondaryBackground borderRadius24 shadow blur12
/// 0x1A000000 offset(0,1) padding16
/// Column gap16:
/// - Row gap8 crossCenter:
///   Box36 alternate radius10 Icon history_rounded primary s20 /
///   Text "Recent Logs" titleMedium bold primaryText
/// - Column gap0:
///   3 rows each pV8 Row spaceBetween crossCenter Divider between:
///     Col crossStart(
///       Text time bodyMedium w600 primaryText /
///       Text "Intensity: X" bodySmall secondaryText marginTop2) /
///     Container w80 h28 alternate borderRadius8 center:
///       Text intensity labelSmall w600 primary
///   Rows: "Today 9:00 AM" "Moderate" /
///         "Yesterday 7:30 AM" "Mild" /
///         "2 Days Ago 6:15 PM" "Severe"
///
/// FONTS: plusJakartaSans for all text — use Theme Text Styles only.
/// Never reference font family directly in any widget.
/// Never hardcoded hex — FlutterFlowTheme tokens only.
class SymptomDetailPageWidget extends StatefulWidget {
  const SymptomDetailPageWidget({super.key});

  static String routeName = 'SymptomDetailPage';
  static String routePath = '/SymptomDetailPage';

  @override
  State<SymptomDetailPageWidget> createState() =>
      _SymptomDetailPageWidgetState();
}

class _SymptomDetailPageWidgetState extends State<SymptomDetailPageWidget> {
  late SymptomDetailPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SymptomDetailPageModel());

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
          leading: Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: FlutterFlowIconButton(
              borderRadius: 8.0,
              buttonSize: 40.0,
              fillColor: Colors.transparent,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'ccb3blem' /* Symptom Detail */,
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
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
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
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.hot_tub_rounded,
                                        color: Colors.white,
                                        size: 28.0,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '76fav2s9' /* Hot Flashes */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineMedium
                                                .override(
                                                  font: GoogleFonts
                                                      .playfairDisplay(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineMedium
                                                            .fontStyle,
                                                  ),
                                                  color: Colors.white,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineMedium
                                                          .fontStyle,
                                                  lineHeight: 1.4,
                                                ),
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'osffjhhq' /* Last logged today */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
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
                                                  color: Color(0xCCFFFFFF),
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
                                    ),
                                  ].divide(SizedBox(width: 16.0)),
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
                                      child: StatItemWidget(
                                        value: '3x',
                                        label: 'Today',
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
                                      child: StatItemWidget(
                                        value: 'Moderate',
                                        label: 'Intensity',
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
                                      child: StatItemWidget(
                                        value: '7d',
                                        label: 'Streak',
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
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
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
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 36.0,
                                      height: 36.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.info_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 20.0,
                                      ),
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'tck6tvpc' /* What is this? */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts.plusJakartaSans(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
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
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '6vdnxxeq' /* Hot flashes are sudden feeling... */,
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
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                        lineHeight: 1.5,
                                      ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Container(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 2.0, 0.0, 0.0),
                                            child: Container(
                                              child: Icon(
                                                Icons.tips_and_updates_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 20.0,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'fz0817zv' /* Most common between 6–8am and ... */,
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
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
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
                                          ),
                                        ].divide(SizedBox(width: 8.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
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
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 36.0,
                                      height: 36.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.bar_chart_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 20.0,
                                      ),
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '7j7czyt3' /* This Week */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts.plusJakartaSans(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
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
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 30.0,
                                      child: wrapWithModel(
                                        model: _model.dailyBarModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: DailyBarWidget(
                                          height: 30.0,
                                          day: 'Mon',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 55.0,
                                      child: wrapWithModel(
                                        model: _model.dailyBarModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: DailyBarWidget(
                                          height: 55.0,
                                          day: 'Tue',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 40.0,
                                      child: wrapWithModel(
                                        model: _model.dailyBarModel3,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: DailyBarWidget(
                                          height: 40.0,
                                          day: 'Wed',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 70.0,
                                      child: wrapWithModel(
                                        model: _model.dailyBarModel4,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: DailyBarWidget(
                                          height: 70.0,
                                          day: 'Thu',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 50.0,
                                      child: wrapWithModel(
                                        model: _model.dailyBarModel5,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: DailyBarWidget(
                                          height: 50.0,
                                          day: 'Fri',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 80.0,
                                      child: wrapWithModel(
                                        model: _model.dailyBarModel6,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: DailyBarWidget(
                                          height: 80.0,
                                          day: 'Sat',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 20.0,
                                      child: wrapWithModel(
                                        model: _model.dailyBarModel7,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: DailyBarWidget(
                                          height: 20.0,
                                          day: 'Sun',
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
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
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
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 36.0,
                                      height: 36.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.history_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 20.0,
                                      ),
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'xka22zg6' /* Recent Logs */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts.plusJakartaSans(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
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
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    wrapWithModel(
                                      model: _model.logEntryModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: LogEntryWidget(
                                        time: 'Today 9:00 AM',
                                        intensity: 'Moderate',
                                        last: false,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.logEntryModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: LogEntryWidget(
                                        time: 'Yesterday 7:30 AM',
                                        intensity: 'Mild',
                                        last: false,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.logEntryModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: LogEntryWidget(
                                        time: '2 Days Ago 6:15 PM',
                                        intensity: 'Severe',
                                        last: true,
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 0.0)),
                                ),
                              ].divide(SizedBox(height: 24.0)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 40.0,
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
