import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : SplashScreenWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : SplashScreenWidget(),
        ),
        FFRoute(
          name: OnboardingQuiz1Widget.routeName,
          path: OnboardingQuiz1Widget.routePath,
          builder: (context, params) => OnboardingQuiz1Widget(),
        ),
        FFRoute(
          name: HomeDashboardWidget.routeName,
          path: HomeDashboardWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'HomeDashboard')
              : HomeDashboardWidget(),
        ),
        FFRoute(
          name: DailySymptomTrackerWidget.routeName,
          path: DailySymptomTrackerWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'DailySymptomTracker')
              : DailySymptomTrackerWidget(),
        ),
        FFRoute(
          name: WellnessHubWidget.routeName,
          path: WellnessHubWidget.routePath,
          builder: (context, params) => WellnessHubWidget(),
        ),
        FFRoute(
          name: VitaminShopWidget.routeName,
          path: VitaminShopWidget.routePath,
          builder: (context, params) => VitaminShopWidget(),
        ),
        FFRoute(
          name: AIHealthCoachWidget.routeName,
          path: AIHealthCoachWidget.routePath,
          builder: (context, params) => AIHealthCoachWidget(),
        ),
        FFRoute(
          name: SymptomTrendsWidget.routeName,
          path: SymptomTrendsWidget.routePath,
          builder: (context, params) => SymptomTrendsWidget(),
        ),
        FFRoute(
          name: UserProfileSettingsWidget.routeName,
          path: UserProfileSettingsWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'UserProfileSettings')
              : UserProfileSettingsWidget(),
        ),
        FFRoute(
          name: ArticleDetail1Widget.routeName,
          path: ArticleDetail1Widget.routePath,
          builder: (context, params) => ArticleDetail1Widget(
            title: params.getParam(
              'title',
              ParamType.String,
            ),
            content: params.getParam(
              'content',
              ParamType.String,
            ),
            tag: params.getParam(
              'tag',
              ParamType.String,
            ),
            readTime: params.getParam(
              'readTime',
              ParamType.String,
            ),
            imageUrl: params.getParam(
              'imageUrl',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: OnboardingQuiz2Widget.routeName,
          path: OnboardingQuiz2Widget.routePath,
          builder: (context, params) => OnboardingQuiz2Widget(),
        ),
        FFRoute(
          name: OnboardingQuiz3Widget.routeName,
          path: OnboardingQuiz3Widget.routePath,
          builder: (context, params) => OnboardingQuiz3Widget(),
        ),
        FFRoute(
          name: OnboardingQuiz4Widget.routeName,
          path: OnboardingQuiz4Widget.routePath,
          builder: (context, params) => OnboardingQuiz4Widget(),
        ),
        FFRoute(
          name: SplashScreenWidget.routeName,
          path: SplashScreenWidget.routePath,
          builder: (context, params) => SplashScreenWidget(),
        ),
        FFRoute(
          name: LoginInWidget.routeName,
          path: LoginInWidget.routePath,
          builder: (context, params) => LoginInWidget(),
        ),
        FFRoute(
          name: SignUpWidget.routeName,
          path: SignUpWidget.routePath,
          builder: (context, params) => SignUpWidget(),
        ),
        FFRoute(
          name: ForgotPasswordWidget.routeName,
          path: ForgotPasswordWidget.routePath,
          builder: (context, params) => ForgotPasswordWidget(),
        ),
        FFRoute(
          name: HormonalProfileWidget.routeName,
          path: HormonalProfileWidget.routePath,
          builder: (context, params) => HormonalProfileWidget(),
        ),
        FFRoute(
          name: ProductDetailWidget.routeName,
          path: ProductDetailWidget.routePath,
          builder: (context, params) => ProductDetailWidget(),
        ),
        FFRoute(
          name: SubscriptionPlanpageWidget.routeName,
          path: SubscriptionPlanpageWidget.routePath,
          builder: (context, params) => SubscriptionPlanpageWidget(),
        ),
        FFRoute(
          name: PlanComparisonWidget.routeName,
          path: PlanComparisonWidget.routePath,
          builder: (context, params) => PlanComparisonWidget(),
        ),
        FFRoute(
          name: SubscriptionSuccessPageWidget.routeName,
          path: SubscriptionSuccessPageWidget.routePath,
          builder: (context, params) => SubscriptionSuccessPageWidget(),
        ),
        FFRoute(
          name: QuizIntroWidget.routeName,
          path: QuizIntroWidget.routePath,
          builder: (context, params) => QuizIntroWidget(),
        ),
        FFRoute(
          name: NutritionGuidePageWidget.routeName,
          path: NutritionGuidePageWidget.routePath,
          builder: (context, params) => NutritionGuidePageWidget(),
        ),
        FFRoute(
          name: NutritionFollicularPageWidget.routeName,
          path: NutritionFollicularPageWidget.routePath,
          builder: (context, params) => NutritionFollicularPageWidget(),
        ),
        FFRoute(
          name: NutritionOvulatoryPageWidget.routeName,
          path: NutritionOvulatoryPageWidget.routePath,
          builder: (context, params) => NutritionOvulatoryPageWidget(),
        ),
        FFRoute(
          name: NutritionLutealPageWidget.routeName,
          path: NutritionLutealPageWidget.routePath,
          builder: (context, params) => NutritionLutealPageWidget(),
        ),
        FFRoute(
          name: SkinHairGuidePageWidget.routeName,
          path: SkinHairGuidePageWidget.routePath,
          builder: (context, params) => SkinHairGuidePageWidget(),
        ),
        FFRoute(
          name: SkinHairFollicularPageWidget.routeName,
          path: SkinHairFollicularPageWidget.routePath,
          builder: (context, params) => SkinHairFollicularPageWidget(),
        ),
        FFRoute(
          name: SkinHairOvulatoryWidget.routeName,
          path: SkinHairOvulatoryWidget.routePath,
          builder: (context, params) => SkinHairOvulatoryWidget(),
        ),
        FFRoute(
          name: SkinHairLutealPageWidget.routeName,
          path: SkinHairLutealPageWidget.routePath,
          builder: (context, params) => SkinHairLutealPageWidget(),
        ),
        FFRoute(
          name: MedicalReportPageWidget.routeName,
          path: MedicalReportPageWidget.routePath,
          builder: (context, params) => MedicalReportPageWidget(),
        ),
        FFRoute(
          name: OurStoryWidget.routeName,
          path: OurStoryWidget.routePath,
          builder: (context, params) => OurStoryWidget(),
        ),
        FFRoute(
          name: DailyReminderPageWidget.routeName,
          path: DailyReminderPageWidget.routePath,
          builder: (context, params) => DailyReminderPageWidget(),
        ),
        FFRoute(
          name: WeeklyInsightPageWidget.routeName,
          path: WeeklyInsightPageWidget.routePath,
          builder: (context, params) => WeeklyInsightPageWidget(),
        ),
        FFRoute(
          name: CommunityForumPageWidget.routeName,
          path: CommunityForumPageWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'CommunityForumPage')
              : CommunityForumPageWidget(),
        ),
        FFRoute(
          name: MyStreakPageWidget.routeName,
          path: MyStreakPageWidget.routePath,
          builder: (context, params) => MyStreakPageWidget(),
        ),
        FFRoute(
          name: SymptomDetailPageWidget.routeName,
          path: SymptomDetailPageWidget.routePath,
          builder: (context, params) => SymptomDetailPageWidget(),
        ),
        FFRoute(
          name: SubscriptionWinBackPagWidget.routeName,
          path: SubscriptionWinBackPagWidget.routePath,
          builder: (context, params) => SubscriptionWinBackPagWidget(),
        ),
        FFRoute(
          name: PersonalizedRecommendationsPagWidget.routeName,
          path: PersonalizedRecommendationsPagWidget.routePath,
          builder: (context, params) => PersonalizedRecommendationsPagWidget(),
        ),
        FFRoute(
          name: CreatePostPageWidget.routeName,
          path: CreatePostPageWidget.routePath,
          builder: (context, params) => CreatePostPageWidget(),
        ),
        FFRoute(
          name: AllreadingsPageWidget.routeName,
          path: AllreadingsPageWidget.routePath,
          builder: (context, params) => AllreadingsPageWidget(),
        ),
        FFRoute(
          name: PrivacySecurityWidget.routeName,
          path: PrivacySecurityWidget.routePath,
          builder: (context, params) => PrivacySecurityWidget(),
        ),
        FFRoute(
          name: AppearancePageWidget.routeName,
          path: AppearancePageWidget.routePath,
          builder: (context, params) => AppearancePageWidget(),
        ),
        FFRoute(
          name: HelpCenterPageWidget.routeName,
          path: HelpCenterPageWidget.routePath,
          builder: (context, params) => HelpCenterPageWidget(),
        ),
        FFRoute(
          name: ProfileVisibilityPageWidget.routeName,
          path: ProfileVisibilityPageWidget.routePath,
          builder: (context, params) => ProfileVisibilityPageWidget(),
        ),
        FFRoute(
          name: ChangePasswordWidget.routeName,
          path: ChangePasswordWidget.routePath,
          builder: (context, params) => ChangePasswordWidget(),
        ),
        FFRoute(
          name: TwoFactorAuthenticationWidget.routeName,
          path: TwoFactorAuthenticationWidget.routePath,
          builder: (context, params) => TwoFactorAuthenticationWidget(),
        ),
        FFRoute(
          name: ReportPageWidget.routeName,
          path: ReportPageWidget.routePath,
          builder: (context, params) => ReportPageWidget(),
        ),
        FFRoute(
          name: LastWeekPageWidget.routeName,
          path: LastWeekPageWidget.routePath,
          builder: (context, params) => LastWeekPageWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/splashScreen';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  name: state.name,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(
                  key: state.pageKey, name: state.name, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
