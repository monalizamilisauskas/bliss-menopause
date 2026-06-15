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
import 'onboarding_quiz4_model.dart';
export 'onboarding_quiz4_model.dart';

class OnboardingQuiz4Widget extends StatefulWidget {
  const OnboardingQuiz4Widget({super.key});

  static String routeName = 'OnboardingQuiz4';
  static String routePath = '/onboardingQuiz4';

  @override
  State<OnboardingQuiz4Widget> createState() => _OnboardingQuiz4WidgetState();
}

class _OnboardingQuiz4WidgetState extends State<OnboardingQuiz4Widget> {
  late OnboardingQuiz4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnboardingQuiz4Model());
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
                                  await currentUserReference!
                                      .update(createUsersRecordData(
                                    onboardingComplete: true,
                                  ));

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
                                  await currentUserReference!
                                      .update(createUsersRecordData(
                                    onboardingComplete: true,
                                  ));

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
                                        active: true,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: wrapWithModel(
                                      model: _model.progressStepModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ProgressStepWidget(
                                        active: true,
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 4.0)),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  '1cu6g3wj' /* Step 4 of 4 */,
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
                            borderRadius: BorderRadius.circular(60.0),
                            shape: BoxShape.rectangle,
                          ),
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Lottie.asset(
                            'assets/jsons/Blooming_Lotus.json',
                            width: 107.6,
                            height: 87.3,
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
                              'us11tjqp' /* What's your main goal with Bli... */,
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
                              'ugmzq7s5' /* We'll tailor your dashboard an... */,
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
                              _model.selectedGoal = 'track_symptoms';
                              safeSetState(() {});
                            },
                            child: wrapWithModel(
                              model: _model.quizOption1Model1,
                              updateCallback: () => safeSetState(() {}),
                              child: QuizOptionWidget(
                                label: 'Track & understand my symptoms',
                                on_tap: 'On Tap',
                                selected:
                                    _model.selectedGoal == 'track_symptoms'
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
                              _model.selectedGoal = 'ai_support';
                              safeSetState(() {});
                            },
                            child: wrapWithModel(
                              model: _model.quizOption1Model2,
                              updateCallback: () => safeSetState(() {}),
                              child: QuizOptionWidget(
                                label: 'Get personalized AI support',
                                on_tap: 'On Tap',
                                selected: _model.selectedGoal == 'ai_support'
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
                              _model.selectedGoal = 'energy_sleep';
                              safeSetState(() {});
                            },
                            child: wrapWithModel(
                              model: _model.quizOption1Model3,
                              updateCallback: () => safeSetState(() {}),
                              child: QuizOptionWidget(
                                label: 'Improve my energy & sleep',
                                on_tap: 'On Tap',
                                selected: _model.selectedGoal == 'energy_sleep'
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
                              _model.selectedGoal = 'remedies';
                              safeSetState(() {});
                            },
                            child: wrapWithModel(
                              model: _model.quizOption1Model4,
                              updateCallback: () => safeSetState(() {}),
                              child: QuizOptionWidget(
                                label: 'Find natural remedies & vitamins',
                                on_tap: 'On Tap',
                                selected: _model.selectedGoal == 'remedies'
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
                              await currentUserReference!
                                  .update(createUsersRecordData(
                                onboardingComplete: true,
                                mainGoal: _model.selectedGoal,
                              ));

                              context.pushNamed(HomeDashboardWidget.routeName);
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
                                          'b797xkwo' /* Your data is encrypted and pri... */,
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
