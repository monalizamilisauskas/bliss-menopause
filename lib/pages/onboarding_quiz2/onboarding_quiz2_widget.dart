import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/button_skip/button_skip_widget.dart';
import '/components/progress_step/progress_step_widget.dart';
import '/components/quiz_option/quiz_option_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'onboarding_quiz2_model.dart';
export 'onboarding_quiz2_model.dart';

class OnboardingQuiz2Widget extends StatefulWidget {
  const OnboardingQuiz2Widget({super.key});

  static String routeName = 'OnboardingQuiz2';
  static String routePath = '/onboardingQuiz2';

  @override
  State<OnboardingQuiz2Widget> createState() => _OnboardingQuiz2WidgetState();
}

class _OnboardingQuiz2WidgetState extends State<OnboardingQuiz2Widget> {
  late OnboardingQuiz2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnboardingQuiz2Model());

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
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Container(
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FlutterFlowIconButton(
                                borderRadius: 8.0,
                                buttonSize: 40.0,
                                fillColor: Colors.transparent,
                                icon: Icon(
                                  Icons.arrow_back_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  context
                                      .pushNamed(HomeDashboardWidget.routeName);
                                },
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context
                                      .pushNamed(HomeDashboardWidget.routeName);
                                },
                                child: wrapWithModel(
                                  model: _model.buttonModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ButtonSkipWidget(
                                    content: 'Skip',
                                    iconResent: false,
                                    iconPresent: false,
                                    onTap: 'navigate:HomeDashboard',
                                    inColor:
                                        FlutterFlowTheme.of(context).primary,
                                    variant: 'ghost',
                                    size: 'small',
                                    fullWidth: false,
                                    loading: false,
                                    disabled: false,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: wrapWithModel(
                                      model: _model.progressStepModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ProgressStepWidget(
                                        active: true,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: wrapWithModel(
                                      model: _model.progressStepModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ProgressStepWidget(
                                        active: true,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: wrapWithModel(
                                      model: _model.progressStepModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ProgressStepWidget(
                                        active: false,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: wrapWithModel(
                                      model: _model.progressStepModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ProgressStepWidget(
                                        active: false,
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 4.0)),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  '0jiewneq' /* Step 2 of 4 */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      font: GoogleFonts.plusJakartaSans(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                      lineHeight: 1.38,
                                    ),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                      Container(
                        height: 24.0,
                      ),
                      Container(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          width: 120.0,
                          height: 120.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            shape: BoxShape.circle,
                          ),
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Lottie.asset(
                            'assets/jsons/Depressed.json',
                            width: 105.6,
                            height: 85.97,
                            fit: BoxFit.contain,
                            animate: true,
                          ),
                        ),
                      ),
                      Container(
                        height: 24.0,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'iy20q8l3' /* What symptoms are affecting yo... */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  font: GoogleFonts.playfairDisplay(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .fontStyle,
                                  ),
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontStyle,
                                  lineHeight: 1.25,
                                ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'yjfopavq' /* This helps us focus on what ma... */,
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
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                  lineHeight: 1.47,
                                ),
                          ),
                        ].divide(SizedBox(height: 8.0)),
                      ),
                      Container(
                        height: 32.0,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (_model.selectedSymptoms
                                  .contains('hot_flashes')) {
                                _model
                                    .removeFromSelectedSymptoms('hot_flashes');
                                safeSetState(() {});
                              } else {
                                _model.addToSelectedSymptoms('hot_flashes');
                                safeSetState(() {});
                              }
                            },
                            child: wrapWithModel(
                              model: _model.quizOption1Model1,
                              updateCallback: () => safeSetState(() {}),
                              child: QuizOptionWidget(
                                label: ' Hot flashes & night sweats',
                                on_tap: 'On Tap',
                                selected: _model.selectedSymptoms
                                        .contains('hot_flashes')
                                    ? true
                                    : false,
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (_model.selectedSymptoms
                                  .contains('sleep_problems')) {
                                _model.removeFromSelectedSymptoms(
                                    'sleep_problems');
                                safeSetState(() {});
                              } else {
                                _model.addToSelectedSymptoms('sleep_problems');
                                safeSetState(() {});
                              }
                            },
                            child: wrapWithModel(
                              model: _model.quizOption1Model2,
                              updateCallback: () => safeSetState(() {}),
                              child: QuizOptionWidget(
                                label: 'Sleep problems',
                                on_tap: 'On Tap',
                                selected: _model.selectedSymptoms
                                        .contains('sleep_problems')
                                    ? true
                                    : false,
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (_model.selectedSymptoms
                                  .contains('mood_swings')) {
                                _model
                                    .removeFromSelectedSymptoms('mood_swings');
                                safeSetState(() {});
                              } else {
                                _model.addToSelectedSymptoms('mood_swings');
                                safeSetState(() {});
                              }
                            },
                            child: wrapWithModel(
                              model: _model.quizOption1Model3,
                              updateCallback: () => safeSetState(() {}),
                              child: QuizOptionWidget(
                                label: ' Mood swings & anxiety',
                                on_tap: 'On Tap',
                                selected: _model.selectedSymptoms
                                        .contains('mood_swings')
                                    ? true
                                    : false,
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (_model.selectedSymptoms
                                  .contains('brain_fog')) {
                                _model.removeFromSelectedSymptoms('brain_fog');
                                safeSetState(() {});
                              } else {
                                _model.addToSelectedSymptoms('brain_fog');
                                safeSetState(() {});
                              }
                            },
                            child: wrapWithModel(
                              model: _model.quizOption1Model4,
                              updateCallback: () => safeSetState(() {}),
                              child: QuizOptionWidget(
                                label: 'Brain fog & memory issues',
                                on_tap: 'On Tap',
                                selected: _model.selectedSymptoms
                                        .contains('brain_fog')
                                    ? true
                                    : false,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 32.0,
                        decoration: BoxDecoration(),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await currentUserReference!.update({
                                ...mapToFirestore(
                                  {
                                    'topSymptoms': _model.selectedSymptoms,
                                  },
                                ),
                              });

                              context
                                  .pushNamed(OnboardingQuiz3Widget.routeName);
                            },
                            child: wrapWithModel(
                              model: _model.buttonModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: ButtonSkipWidget(
                                content: 'Continue',
                                iconResent: false,
                                iconPresent: false,
                                onTap: 'navigate:HomeDashboard',
                                inColor: FlutterFlowTheme.of(context).primary,
                                variant: 'primary',
                                size: 'large',
                                fullWidth: false,
                                loading: false,
                                disabled: false,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(16.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Container(
                                decoration: BoxDecoration(),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.info_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .onSurface,
                                      size: 20.0,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '5myxdk87' /* Your data is encrypted and pri... */,
                                        ),
                                        maxLines: 2,
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              font: GoogleFonts.plusJakartaSans(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .fontStyle,
                                              lineHeight: 1.38,
                                            ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                      Container(
                        height: 32.0,
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
