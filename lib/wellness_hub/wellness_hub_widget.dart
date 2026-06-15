import '/components/button_skip/button_skip_widget.dart';
import '/components/category_chip/category_chip_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/components/wellness_card/wellness_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'wellness_hub_model.dart';
export 'wellness_hub_model.dart';

class WellnessHubWidget extends StatefulWidget {
  const WellnessHubWidget({super.key});

  static String routeName = 'WellnessHub';
  static String routePath = '/wellnessHub';

  @override
  State<WellnessHubWidget> createState() => _WellnessHubWidgetState();
}

class _WellnessHubWidgetState extends State<WellnessHubWidget> {
  late WellnessHubModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WellnessHubModel());
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
                color: FlutterFlowTheme.of(context).primaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 416.0,
                    height: 39.6,
                    decoration: BoxDecoration(),
                  ),
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '0t3uv0g8' /* Wellness Hub */,
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
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
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
                                  'ne7ngcuv' /* Nourish your body & mind */,
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
                            ],
                          ),
                          FlutterFlowIconButton(
                            borderRadius: 9999.0,
                            buttonSize: 40.0,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            icon: Icon(
                              Icons.person_outline_rounded,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              context.pushNamed(
                                  UserProfileSettingsWidget.routeName);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 16.0),
                child: Container(
                  child: wrapWithModel(
                    model: _model.textFieldModel,
                    updateCallback: () => safeSetState(() {}),
                    child: TextFieldWidget(
                      label: false,
                      helper: false,
                      hint: 'Search tips, recipes...',
                      value: '',
                      leading_icon: Icon(
                        Icons.search_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 16.0,
                      ),
                      leading_icon_present: true,
                      trailing_icon_present: false,
                      radius: 32.0,
                      variant: 'filled',
                      error: false,
                    ),
                  ),
                ),
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 24.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    wrapWithModel(
                                      model: _model.categoryChipModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CategoryChipWidget(
                                        icon: Icon(
                                          Icons.grid_view_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .onPrimary,
                                          size: 18.0,
                                        ),
                                        label: 'All',
                                        selected: true,
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                            NutritionGuidePageWidget.routeName);
                                      },
                                      child: wrapWithModel(
                                        model: _model.categoryChipModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CategoryChipWidget(
                                          icon: Icon(
                                            Icons.restaurant_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 18.0,
                                          ),
                                          label: 'Nutrition',
                                          selected: false,
                                        ),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.categoryChipModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CategoryChipWidget(
                                        icon: Icon(
                                          Icons.face_retouching_natural_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 18.0,
                                        ),
                                        label: 'Skin Care',
                                        selected: false,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.categoryChipModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CategoryChipWidget(
                                        icon: Icon(
                                          Icons.self_improvement_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 18.0,
                                        ),
                                        label: 'Mindfulness',
                                        selected: false,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 16.0)),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'ilqjoqoh' /* Featured for You */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          font: GoogleFonts.plusJakartaSans(
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontStyle,
                                          lineHeight: 1.27,
                                        ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primary10,
                                      borderRadius: BorderRadius.circular(24.0),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary20,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(24.0),
                                      child: Container(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
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
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8hmzw6gu' /* NEW GUIDE */,
                                                    ),
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
                                                              .onSecondary,
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
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'hczd9djy' /* The Menopause Superfood Guide */,
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
                                                          lineHeight: 1.35,
                                                        ),
                                                  ),
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6yi0md86' /* Essential nutrients for hormon... */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .onSecondary,
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
                                                          lineHeight: 1.38,
                                                        ),
                                                  ),
                                                  Container(
                                                    height: 4.0,
                                                  ),
                                                  wrapWithModel(
                                                    model: _model.buttonModel1,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: ButtonSkipWidget(
                                                      content: 'Explore Now',
                                                      iconResent: false,
                                                      iconPresent: false,
                                                      onTap:
                                                          'navigate:HomeDashboard',
                                                      inColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      variant: 'primary',
                                                      size: 'small',
                                                      fullWidth: false,
                                                      loading: false,
                                                      disabled: false,
                                                    ),
                                                  ),
                                                ].divide(SizedBox(height: 4.0)),
                                              ),
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                              child: Container(
                                                width: 80.0,
                                                height: 80.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                  shape: BoxShape.rectangle,
                                                ),
                                                child: CachedNetworkImage(
                                                  fadeInDuration:
                                                      Duration(milliseconds: 0),
                                                  fadeOutDuration:
                                                      Duration(milliseconds: 0),
                                                  imageUrl:
                                                      'https://dimg.dreamflow.cloud/v1/image/healthy%20mediterranean%20food%20bowl',
                                                  fit: BoxFit.cover,
                                                  alignment:
                                                      Alignment(0.0, 0.0),
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 16.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'zay9bush' /* Latest Articles */,
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                              lineHeight: 1.35,
                                            ),
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'zflx511p' /* See All */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              font: GoogleFonts.plusJakartaSans(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .onSecondary,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .fontStyle,
                                              lineHeight: 1.33,
                                            ),
                                      ),
                                    ],
                                  ),
                                  wrapWithModel(
                                    model: _model.wellnessCardModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: WellnessCardWidget(
                                      description:
                                          'How to maintain your glow as estrogen levels shift during menopause.',
                                      duration: '5 min read',
                                      img_desc:
                                          'https://dimg.dreamflow.cloud/v1/image/woman%20with%20glowing%20skin%20applying%20serum',
                                      nav_target: 'Nav Target',
                                      tag: 'Skin Care',
                                      title: 'Hydration & Skin Elasticity',
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                          WellnessHubWidget.routeName);
                                    },
                                    child: wrapWithModel(
                                      model: _model.wellnessCardModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: WellnessCardWidget(
                                        description:
                                            'Struggling with insomnia? Discover why magnesium is your new best friend.',
                                        duration: '4 min read',
                                        img_desc:
                                            'https://dimg.dreamflow.cloud/v1/image/close%20up%20of%20healthy%20nuts%20and%20seeds',
                                        nav_target: 'Nav Target',
                                        tag: 'Nutrition',
                                        title: 'Magnesium: The Sleep Mineral',
                                      ),
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.wellnessCardModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: WellnessCardWidget(
                                      description:
                                          'Yoga poses specifically designed to alleviate menopause-related joint pain.',
                                      duration: '8 min read',
                                      img_desc:
                                          'https://dimg.dreamflow.cloud/v1/image/woman%20practicing%20yoga%20in%20soft%20morning%20light',
                                      nav_target: 'Nav Target',
                                      tag: 'Health',
                                      title: 'Gentle Movement for Joints',
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  borderRadius: BorderRadius.circular(24.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(24.0),
                                  child: Container(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 50.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(9999.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Lottie.network(
                                            'https://dimg.dreamflow.cloud/v1/lottie/sparkling+AI+assistant+icon',
                                            width: 30.0,
                                            height: 30.0,
                                            fit: BoxFit.contain,
                                            animate: true,
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
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'rh00vhiq' /* Have a specific question? */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Inter Tight',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'vo88c6r7' /* Ask Bliss AI about your sympto... */,
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
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
                                                          lineHeight: 1.38,
                                                        ),
                                              ),
                                            ].divide(SizedBox(height: 4.0)),
                                          ),
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                                AIHealthCoachWidget.routeName);
                                          },
                                          child: wrapWithModel(
                                            model: _model.buttonModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ButtonSkipWidget(
                                              content: 'Chat',
                                              iconResent: false,
                                              iconPresent: false,
                                              onTap: 'navigate:AIHealthCoach',
                                              inColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              variant: 'secondary',
                                              size: 'small',
                                              fullWidth: false,
                                              loading: false,
                                              disabled: false,
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 16.0)),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 32.0,
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
          ],
        ),
      ),
    );
  }
}
