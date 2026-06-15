import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/genui/ff_genui_chat.dart';
import '/index.dart';
import 'package:genui/genui.dart';
import 'package:genui_firebase_ai/genui_firebase_ai.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'a_i_health_coach_model.dart';
export 'a_i_health_coach_model.dart';

class AIHealthCoachWidget extends StatefulWidget {
  const AIHealthCoachWidget({super.key});

  static String routeName = 'AIHealthCoach';
  static String routePath = '/aIHealthCoach';

  @override
  State<AIHealthCoachWidget> createState() => _AIHealthCoachWidgetState();
}

class _AIHealthCoachWidgetState extends State<AIHealthCoachWidget> {
  late AIHealthCoachModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AIHealthCoachModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if ((valueOrDefault(currentUserDocument?.subscriptionTier, '') !=
              'complete') &&
          (valueOrDefault(currentUserDocument?.subscriptionTier, '') !=
              'annual')) {
        context.pushNamed(SubscriptionPlanpageWidget.routeName);
      }
    });
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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 24.0),
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            fillColor: Colors.transparent,
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              context.pushNamed(HomeDashboardWidget.routeName);
                            },
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              'assets/images/logo_app.png',
                              width: 40.0,
                              height: 40.0,
                              fit: BoxFit.cover,
                              alignment: Alignment(0.0, 0.0),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'pzehigwd' /* Bliss Coach */,
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
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                        lineHeight: 1.35,
                                      ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 8.0,
                                      height: 8.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .success,
                                        borderRadius:
                                            BorderRadius.circular(9999.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'hpn120zp' /* Always here for you */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            font: GoogleFonts.plusJakartaSans(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontStyle,
                                            lineHeight: 1.27,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 4.0)),
                                ),
                              ].divide(SizedBox(height: 2.0)),
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            fillColor: Colors.transparent,
                            icon: Icon(
                              Icons.info_outlined,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              context.safePop();
                            },
                          ),
                        ].divide(SizedBox(width: 16.0)),
                      ),
                    ),
                  ),
                  Container(
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 24.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Lottie.network(
                                      'https://dimg.dreamflow.cloud/v1/lottie/friendly+waving+female+character',
                                      width: 120.0,
                                      height: 120.0,
                                      fit: BoxFit.contain,
                                      animate: true,
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          DateTime.now().hour < 12
                                              ? 'Good morning, '
                                              : DateTime.now().hour < 18
                                                  ? 'Good afternoon, '
                                                  : 'Good evening, ',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                font:
                                                    GoogleFonts.plusJakartaSans(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLarge
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLarge
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .fontStyle,
                                                lineHeight: 1.27,
                                              ),
                                        ),
                                        AuthUserStreamWidget(
                                          builder: (context) => Text(
                                            currentUserDisplayName,
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  font: GoogleFonts
                                                      .plusJakartaSans(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLarge
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLarge
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLarge
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLarge
                                                          .fontStyle,
                                                  lineHeight: 1.27,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'di1bjli0' /* I'm your Bliss AI Coach. How a... */,
                                      ),
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
                                            color: FlutterFlowTheme.of(context)
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
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.6,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: AuthUserStreamWidget(
                                            builder: (context) => FFGenUIChat(
                                              config: FFGenUIChatConfig(
                                                userPrompt:
                                                    'You are Bliss, a compassionate AI health coach  specializing in perimenopause and menopause.  The woman you are speaking with is ${functions.calculateAge(currentUserDocument?.dateOfBirth).toString()} years old. Use this information to personalize your responses based on her specific life stage: - Under 45: Early perimenopause awareness - 45-50: Active perimenopause support - 51-55: Menopause transition support - 55+: Post-menopause wellness focus  You speak with warmth, empathy and understanding. You explain hormonal changes clearly and give personalized advice based on symptoms shared and the user\'s age.  Your areas of expertise: - Hot flashes and night sweats management - Sleep hygiene during menopause - Nutrition and supplements for hormonal balance - Stress and mood management - Exercise recommendations - Skin and hair changes - Brain fog and memory tips - Libido and intimacy support  Rules: - Never diagnose medical conditions - Always recommend consulting a doctor for serious concerns - Keep responses concise and supportive (max 3-4 paragraphs) - Use encouraging, non-judgmental language - Respond in the same language the user writes in - Focus on practical, actionable tips - Always acknowledge the user\'s age context when relevant to the response' ??
                                                        'You are a helpful AI assistant that builds UI in response to user requests.',
                                                componentDocs: '''''',
                                                catalog: Catalog([],
                                                    catalogId:
                                                        'flutterflow.io:genUIChatWidgetConfig'),
                                                contentGeneratorFactory: (catalog,
                                                        systemPrompt, context,
                                                        {onStatusChange}) =>
                                                    FirebaseAiContentGenerator(
                                                  catalog: catalog,
                                                  systemInstruction:
                                                      systemPrompt,
                                                ),
                                                showHeader: false,
                                                headerTitle: 'Chat',
                                                showAvatars: false,
                                                avatarSize: 32.0,
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                                contentPadding:
                                                    EdgeInsets.all(16.0),
                                                messageSpacing: 8.0,
                                                autoScroll: true,
                                                scrollAnimationMs: 300,
                                                inputPlaceholder:
                                                    'Ask Bliss anything...',
                                                inputAreaBackgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                inputAreaBorderRadius:
                                                    BorderRadius.circular(24.0),
                                                userBubbleColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                userBubbleTextColor:
                                                    FlutterFlowTheme.of(context)
                                                        .onPrimary,
                                                userBubbleBorderRadius:
                                                    BorderRadius.circular(16.0),
                                                aiBubbleColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                aiBubbleTextColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                aiBubbleBorderRadius:
                                                    BorderRadius.circular(16.0),
                                                sendButtonIconColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                sendButtonBackgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                showWelcome: false,
                                                thinkingMessage:
                                                    'Bliss is thinking...',
                                              ),
                                              width: double.infinity,
                                              height: double.infinity,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ].divide(SizedBox(height: 16.0)),
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
            ),
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
