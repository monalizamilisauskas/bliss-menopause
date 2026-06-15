import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/button_skip/button_skip_widget.dart';
import '/components/profile_stat/profile_stat_widget.dart';
import '/components/settings_item/settings_item_widget.dart';
import '/components/switch_component/switch_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'user_profile_settings_model.dart';
export 'user_profile_settings_model.dart';

class UserProfileSettingsWidget extends StatefulWidget {
  const UserProfileSettingsWidget({super.key});

  static String routeName = 'UserProfileSettings';
  static String routePath = '/userProfileSettings';

  @override
  State<UserProfileSettingsWidget> createState() =>
      _UserProfileSettingsWidgetState();
}

class _UserProfileSettingsWidgetState extends State<UserProfileSettingsWidget> {
  late UserProfileSettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserProfileSettingsModel());

    _model.textController ??=
        TextEditingController(text: currentUserDisplayName);
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<CycleDataRecord>>(
      stream: queryCycleDataRecord(
        queryBuilder: (cycleDataRecord) => cycleDataRecord.where(
          'userId',
          isEqualTo: currentUserUid,
        ),
        singleRecord: true,
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
        List<CycleDataRecord> userProfileSettingsCycleDataRecordList =
            snapshot.data!;
        final userProfileSettingsCycleDataRecord =
            userProfileSettingsCycleDataRecordList.isNotEmpty
                ? userProfileSettingsCycleDataRecordList.first
                : null;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(32.0),
                        bottomRight: Radius.circular(32.0),
                      ),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      120.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'k6fkfxoi' /* My Profile */,
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.plusJakartaSans(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                          lineHeight: 1.35,
                                        ),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    if (_model.isEditing == false
                                        ? true
                                        : false)
                                      FlutterFlowIconButton(
                                        borderRadius: 9999.0,
                                        buttonSize: 40.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primary10,
                                        icon: Icon(
                                          Icons.edit_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 24.0,
                                        ),
                                        onPressed: () async {
                                          if (_model.isEditing == false) {
                                            _model.isEditing = true;
                                            safeSetState(() {});
                                          } else {
                                            await currentUserReference!
                                                .update(createUsersRecordData(
                                              displayName:
                                                  currentUserDisplayName,
                                            ));
                                            _model.isEditing = false;
                                            safeSetState(() {});
                                          }
                                        },
                                      ),
                                    if (_model.isEditing == true ? true : false)
                                      FlutterFlowIconButton(
                                        borderRadius: 9999.0,
                                        buttonSize: 40.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primary10,
                                        icon: Icon(
                                          Icons.check,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 24.0,
                                        ),
                                        onPressed: () async {
                                          await currentUserReference!
                                              .update(createUsersRecordData(
                                            displayName:
                                                _model.textController.text,
                                          ));
                                          _model.isEditing = false;
                                          safeSetState(() {});
                                        },
                                      ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  children: [
                                    Container(
                                      width: 108.0,
                                      height: 108.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(9999.0),
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primary20,
                                          width: 3.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Container(
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                            child: CachedNetworkImage(
                                              fadeInDuration:
                                                  Duration(milliseconds: 0),
                                              fadeOutDuration:
                                                  Duration(milliseconds: 0),
                                              imageUrl:
                                                  'https://dimg.dreamflow.cloud/v1/image/45%20year%20old%20smiling%20woman%20with%20glowing%20skin',
                                              width: 100.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                              alignment: Alignment(0.0, 0.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 1.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          borderRadius:
                                              BorderRadius.circular(9999.0),
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            width: 2.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 4.0, 8.0, 4.0),
                                          child: Container(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons
                                                      .local_fire_department_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .warning,
                                                  size: 14.0,
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
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontStyle,
                                                          lineHeight: 1.27,
                                                        ),
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 4.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Stack(
                                      children: [
                                        if (_model.isEditing == true
                                            ? false
                                            : true)
                                          AuthUserStreamWidget(
                                            builder: (context) => Text(
                                              currentUserDisplayName,
                                              style: FlutterFlowTheme.of(
                                                      context)
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
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineMedium
                                                            .fontStyle,
                                                    lineHeight: 1.25,
                                                  ),
                                            ),
                                          ),
                                        if (_model.isEditing == true
                                            ? true
                                            : false)
                                          AuthUserStreamWidget(
                                            builder: (context) => Container(
                                              width: 200.0,
                                              child: TextFormField(
                                                controller:
                                                    _model.textController,
                                                focusNode:
                                                    _model.textFieldFocusNode,
                                                onFieldSubmitted: (_) async {
                                                  await currentUserReference!
                                                      .update(
                                                          createUsersRecordData(
                                                    displayName: _model
                                                        .textController.text,
                                                  ));
                                                },
                                                autofocus: false,
                                                enabled: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .plusJakartaSans(
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                            ),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '74224rh5' /* Enter your name */,
                                                  ),
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .plusJakartaSans(
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                            ),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
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
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineMedium
                                                                  .fontStyle,
                                                          lineHeight: 1.25,
                                                        ),
                                                textAlign: TextAlign.center,
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                enableInteractiveSelection:
                                                    true,
                                                validator: _model
                                                    .textControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        valueOrDefault(
                                            currentUserDocument?.currentPhase,
                                            ''),
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                              lineHeight: 1.47,
                                            ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 5.0, 0.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.birthdayCake,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                            size: 14.0,
                                          ),
                                        ),
                                        AuthUserStreamWidget(
                                          builder: (context) => Text(
                                            'Age ${functions.calculateAge(currentUserDocument?.dateOfBirth).toString()}',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.plusJakartaSans(
                                              color: Color(0xFF8B6F5E),
                                              fontSize: 13.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 16.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  wrapWithModel(
                                    model: _model.profileStatModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ProfileStatWidget(
                                      label: 'Cycle Length',
                                      value: userProfileSettingsCycleDataRecord
                                          ?.avgCycleDays
                                          .toString(),
                                    ),
                                  ),
                                  Container(
                                    width: 1.0,
                                    height: 30.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                    ),
                                  ),
                                  AuthUserStreamWidget(
                                    builder: (context) => wrapWithModel(
                                      model: _model.profileStatModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ProfileStatWidget(
                                        label: 'Health Score',
                                        value: valueOrDefault(
                                                currentUserDocument
                                                    ?.consistencyPercent,
                                                0)
                                            .toString(),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 1.0,
                                    height: 30.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                    ),
                                  ),
                                  AuthUserStreamWidget(
                                    builder: (context) => wrapWithModel(
                                      model: _model.profileStatModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ProfileStatWidget(
                                        label: 'Logs this Month',
                                        value: valueOrDefault(
                                                currentUserDocument
                                                    ?.totalDaysLogged,
                                                0)
                                            .toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(SizedBox(height: 24.0)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'lnbcdtoe' /* Health Records */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontStyle,
                                    lineHeight: 1.33,
                                  ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context
                                    .pushNamed(HormonalProfileWidget.routeName);
                              },
                              child: wrapWithModel(
                                model: _model.settingsItemModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: SettingsItemWidget(
                                  icon: Icon(
                                    Icons.female_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 22.0,
                                  ),
                                  on_tap: 'navigate:OnboardingQuiz',
                                  title: 'Hormonal Profile',
                                  subtitle: 'Updated 2 weeks ago',
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context
                                    .pushNamed(SymptomTrendsWidget.routeName);
                              },
                              child: wrapWithModel(
                                model: _model.settingsItemModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: SettingsItemWidget(
                                  icon: Icon(
                                    Icons.analytics_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 22.0,
                                  ),
                                  on_tap: 'navigate:SymptomTrends',
                                  title: 'Symptom History',
                                  subtitle: 'View trends & patterns',
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(VitaminShopWidget.routeName);
                              },
                              child: wrapWithModel(
                                model: _model.settingsItemModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: SettingsItemWidget(
                                  icon: Icon(
                                    Icons.medical_services_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 22.0,
                                  ),
                                  on_tap: 'navigate:VitaminShop',
                                  title: 'Vitamin Protocol',
                                  subtitle: 'Daily recommendations',
                                ),
                              ),
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'hfiztgfm' /* Preferences */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontStyle,
                                    lineHeight: 1.33,
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
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary10,
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Icon(
                                          Icons.notifications_active_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .onSecondary,
                                          size: 22.0,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: wrapWithModel(
                                          model: _model.switchComponentModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SwitchComponentWidget(
                                            label: false,
                                            variant: 'Android',
                                            active: true,
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context
                                    .pushNamed(AIHealthCoachWidget.routeName);
                              },
                              child: wrapWithModel(
                                model: _model.settingsItemModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: SettingsItemWidget(
                                  icon: Icon(
                                    Icons.psychology_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 22.0,
                                  ),
                                  on_tap: 'navigate:AIHealthCoach',
                                  title: 'AI Coach Settings',
                                  subtitle: 'Personalize your Bliss bot',
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context
                                    .pushNamed(AppearancePageWidget.routeName);
                              },
                              child: wrapWithModel(
                                model: _model.settingsItemModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: SettingsItemWidget(
                                  icon: Icon(
                                    Icons.dark_mode_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 22.0,
                                  ),
                                  on_tap: 'navigate:OnboardingQuiz',
                                  title: 'Appearance',
                                  subtitle: 'Light mode',
                                ),
                              ),
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                '2p573t8k' /* Support */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontStyle,
                                    lineHeight: 1.33,
                                  ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context
                                    .pushNamed(HelpCenterPageWidget.routeName);
                              },
                              child: wrapWithModel(
                                model: _model.settingsItemModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: SettingsItemWidget(
                                  icon: Icon(
                                    Icons.help_outline_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 22.0,
                                  ),
                                  on_tap: 'navigate:OnboardingQuiz',
                                  title: 'Help Center',
                                  subtitle: '',
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context
                                    .pushNamed(PrivacySecurityWidget.routeName);
                              },
                              child: wrapWithModel(
                                model: _model.settingsItemModel7,
                                updateCallback: () => safeSetState(() {}),
                                child: SettingsItemWidget(
                                  icon: Icon(
                                    Icons.verified_user_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 22.0,
                                  ),
                                  on_tap: 'navigate:OnboardingQuiz',
                                  title: 'Privacy & Security',
                                  subtitle: '',
                                ),
                              ),
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            GoRouter.of(context).prepareAuthEvent();
                            await authManager.signOut();
                            GoRouter.of(context).clearRedirectLocation();

                            context.goNamedAuth(
                                SplashScreenWidget.routeName, context.mounted);
                          },
                          child: wrapWithModel(
                            model: _model.buttonModel,
                            updateCallback: () => safeSetState(() {}),
                            child: ButtonSkipWidget(
                              content: 'Sign Out',
                              icon: Icon(
                                Icons.logout_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 16.0,
                              ),
                              iconResent: true,
                              iconPresent: false,
                              onTap: 'navigate:HomeDashboard',
                              inColor: FlutterFlowTheme.of(context).primary,
                              variant: 'outline',
                              size: 'medium',
                              fullWidth: true,
                              loading: false,
                              disabled: false,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 32.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'aouanuyc' /* Bliss Version 2.4.0 */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: GoogleFonts.plusJakartaSans(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .onSecondary,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                      lineHeight: 1.27,
                                    ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  'u3oyo4sg' /* Made with ❤️ for women everywh... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: GoogleFonts.plusJakartaSans(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .onSecondary,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                      lineHeight: 1.27,
                                    ),
                              ),
                            ].divide(SizedBox(height: 4.0)),
                          ),
                        ),
                      ].divide(SizedBox(height: 24.0)),
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
