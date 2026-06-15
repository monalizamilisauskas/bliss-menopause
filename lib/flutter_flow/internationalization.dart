import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'pt'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? ptText = '',
  }) =>
      [enText, ptText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // OnboardingQuiz1
  {
    '5uhjys85': {
      'en': 'Step 1 of 4',
      'pt': '',
    },
    '9irmcmxq': {
      'en': 'Where are you in your menopause journey?',
      'pt': '',
    },
    'qxknyex9': {
      'en':
          'Understanding your stage helps us personalize your experience and recommendations.',
      'pt': '',
    },
    'srmeziyj': {
      'en':
          'Your data is encrypted and private. We use this only to personalize your Bliss experience.',
      'pt': '',
    },
  },
  // HomeDashboard
  {
    'greq3xil': {
      'en': 'Current Streak',
      'pt': '',
    },
    '9c97q1he': {
      'en': ' Days',
      'pt': '',
    },
    '7sq1sorj': {
      'en': 'Hormonal Balance',
      'pt': '',
    },
    'iiwz4vzh': {
      'en': 'Daily Rituals',
      'pt': '',
    },
    'ftduxayb': {
      'en': 'Symptom Overview',
      'pt': '',
    },
    'cax6vp5o': {
      'en': 'TIP OF THE DAY',
      'pt': '',
    },
    '2hen3jya': {
      'en':
          'Magnesium rich foods can help improve your sleep cycle during menopause.',
      'pt': '',
    },
    'ocgvx9yr': {
      'en': 'Recommended for You',
      'pt': '',
    },
    'vblo3kuz': {
      'en': 'Menopause Support',
      'pt': '',
    },
    'l472a5gb': {
      'en': '\$24.00',
      'pt': '',
    },
    'lp8ceu22': {
      'en': 'Vitamin D3 + K2',
      'pt': '',
    },
    '62idfs0m': {
      'en': '\$18.00',
      'pt': '',
    },
    'jp884bd7': {
      'en': 'Ask Bliss AI',
      'pt': '',
    },
    '0vriymv3': {
      'en': 'Home',
      'pt': '',
    },
  },
  // DailySymptomTracker
  {
    'zl496ael': {
      'en': 'Daily Log',
      'pt': '',
    },
    'jhpi88nz': {
      'en': 'How are you feeling, ',
      'pt': '',
    },
    'g0ln29e5': {
      'en': '?',
      'pt': '',
    },
    '6cgg9hf1': {
      'en': 'Current Mood',
      'pt': '',
    },
    'rgru4jxp': {
      'en': 'Hot Flashes',
      'pt': '',
    },
    'c7i2o55o': {
      'en': 'Frequency',
      'pt': '',
    },
    'soxma51x': {
      'en': 'Last log',
      'pt': '',
    },
    'r2ctiai7': {
      'en': '2h ago',
      'pt': '',
    },
    'l9f8voru': {
      'en': 'Vitality',
      'pt': '',
    },
    'gyr1xtwe': {
      'en': 'Other Symptoms',
      'pt': '',
    },
    '3jh3b3l3': {
      'en': 'Bliss AI Insight',
      'pt': '',
    },
    'tqk281h4': {
      'en':
          'Your sleep quality often dips after night sweats. Try lowering the room temp to 65°F tonight.',
      'pt': '',
    },
    '5q63y9b2': {
      'en': 'Symptoms',
      'pt': '',
    },
  },
  // WellnessHub
  {
    '0t3uv0g8': {
      'en': 'Wellness Hub',
      'pt': '',
    },
    'ne7ngcuv': {
      'en': 'Nourish your body & mind',
      'pt': '',
    },
    'ilqjoqoh': {
      'en': 'Featured for You',
      'pt': '',
    },
    '8hmzw6gu': {
      'en': 'NEW GUIDE',
      'pt': '',
    },
    'hczd9djy': {
      'en': 'The Menopause Superfood Guide',
      'pt': '',
    },
    '6yi0md86': {
      'en': 'Essential nutrients for hormonal balance.',
      'pt': '',
    },
    'zay9bush': {
      'en': 'Latest Articles',
      'pt': '',
    },
    'zflx511p': {
      'en': 'See All',
      'pt': '',
    },
    'rh00vhiq': {
      'en': 'Have a specific question?',
      'pt': '',
    },
    'vo88c6r7': {
      'en': 'Ask Bliss AI about your symptoms.',
      'pt': '',
    },
  },
  // VitaminShop
  {
    'hu76iuv3': {
      'en': 'Your Wellness Kit',
      'pt': '',
    },
    'nf80pcen': {
      'en': 'Personalized for your menopause journey',
      'pt': '',
    },
    'dbyyrzz1': {
      'en': 'AI RECOMMENDED',
      'pt': '',
    },
    'gymsexh4': {
      'en': 'The Bliss Daily Pack',
      'pt': '',
    },
    '7xxkk1xl': {
      'en':
          'Vitamin D3, Magnesium, and Black Cohosh tailored to your recent hot flash trends.',
      'pt': '',
    },
    'cyure8ye': {
      'en': 'Essential Supplements',
      'pt': '',
    },
    'jovm4zcu': {
      'en': 'See All',
      'pt': '',
    },
    'd7hrfsul': {
      'en': 'Bliss Tip',
      'pt': '',
    },
    '5rfcv4q3': {
      'en':
          'Taking Magnesium before bed can help improve sleep quality and reduce night sweats.',
      'pt': '',
    },
  },
  // AIHealthCoach
  {
    'pzehigwd': {
      'en': 'Bliss Coach',
      'pt': '',
    },
    'hpn120zp': {
      'en': 'Always here for you',
      'pt': '',
    },
    'di1bjli0': {
      'en':
          'I\'m your Bliss AI Coach. How are you feeling today? I can help with symptom relief, nutrition, or just listen.',
      'pt': '',
    },
  },
  // SymptomTrends
  {
    'veuxoo3t': {
      'en': 'Symptom Trends',
      'pt': '',
    },
    '219hltzh': {
      'en': '7 Days',
      'pt': '',
    },
    '5ez21quv': {
      'en': '30 Days',
      'pt': '',
    },
    'pejixshe': {
      'en': '3 Months',
      'pt': '',
    },
    'iit3n0rl': {
      'en': 'Year',
      'pt': '',
    },
    'pmudvd32': {
      'en': 'Hot Flash Frequency',
      'pt': '',
    },
    'ihyo1ck6': {
      'en': 'Symptom Distribution',
      'pt': '',
    },
    'zzenkuo6': {
      'en': 'Recent Logs',
      'pt': '',
    },
    'qqaklxkl': {
      'en': 'Bliss Insight',
      'pt': '',
    },
  },
  // UserProfileSettings
  {
    'k6fkfxoi': {
      'en': 'My Profile',
      'pt': '',
    },
    '74224rh5': {
      'en': 'Enter your name',
      'pt': '',
    },
    'lnbcdtoe': {
      'en': 'Health Records',
      'pt': '',
    },
    'hfiztgfm': {
      'en': 'Preferences',
      'pt': '',
    },
    '2p573t8k': {
      'en': 'Support',
      'pt': '',
    },
    'aouanuyc': {
      'en': 'Bliss Version 2.4.0',
      'pt': '',
    },
    'u3oyo4sg': {
      'en': 'Made with ❤️ for women everywhere',
      'pt': '',
    },
    '1xl6xd8j': {
      'en': 'settings',
      'pt': '',
    },
  },
  // ArticleDetail1
  {
    'ds59g65h': {
      'en': 'Bliss Editorial',
      'pt': '',
    },
    '5urtejhq': {
      'en': 'Home',
      'pt': '',
    },
  },
  // OnboardingQuiz2
  {
    '0jiewneq': {
      'en': 'Step 2 of 4',
      'pt': '',
    },
    'iy20q8l3': {
      'en': 'What symptoms are affecting you most?',
      'pt': '',
    },
    'yjfopavq': {
      'en': 'This helps us focus on what matters most to you.',
      'pt': '',
    },
    '5myxdk87': {
      'en':
          'Your data is encrypted and private. We use this only to personalize your Bliss experience.',
      'pt': '',
    },
  },
  // OnboardingQuiz3
  {
    '4vmxmwiu': {
      'en': 'Step 3 of 4',
      'pt': '',
    },
    'xz7x7o8u': {
      'en': 'How would you describe your current wellness routine?',
      'pt': '',
    },
    'r033nf4i': {
      'en': 'No judgment here! We just want to meet you where you are.',
      'pt': '',
    },
    '1dfaxtd5': {
      'en':
          'Your data is encrypted and private. We use this only to personalize your Bliss experience.',
      'pt': '',
    },
  },
  // OnboardingQuiz4
  {
    '1cu6g3wj': {
      'en': 'Step 4 of 4',
      'pt': '',
    },
    'us11tjqp': {
      'en': 'What\'s your main goal with Bliss?',
      'pt': '',
    },
    'ugmzq7s5': {
      'en': 'We\'ll tailor your dashboard and daily tips based on your answer.',
      'pt': '',
    },
    'b797xkwo': {
      'en':
          'Your data is encrypted and private. We use this only to personalize your Bliss experience.',
      'pt': '',
    },
  },
  // LoginIn
  {
    'e0le3gf5': {
      'en': 'Welcome Back',
      'pt': '',
    },
    'ksglcmly': {
      'en': 'Your refuge to blossom with serenity',
      'pt': '',
    },
    'lfymnsyb': {
      'en': 'Email address',
      'pt': '',
    },
    'a24kkvzh': {
      'en': 'Password',
      'pt': '',
    },
    'pnqak33x': {
      'en': 'Sign In',
      'pt': '',
    },
    'l7z2nbr2': {
      'en': 'Forgot Password?',
      'pt': '',
    },
    'xfvkbu7l': {
      'en': 'or',
      'pt': '',
    },
    '49s7vxn3': {
      'en': 'Continue with Google',
      'pt': '',
    },
    'rvb0i2y3': {
      'en': 'Don\'t have an account? ',
      'pt': '',
    },
    '723em2pl': {
      'en': 'Sign Up',
      'pt': '',
    },
  },
  // SignUp
  {
    'ljs7t48b': {
      'en': 'Create Account',
      'pt': '',
    },
    'v3a3f2gk': {
      'en': 'Start your wellness journey today',
      'pt': '',
    },
    'hzdw67ui': {
      'en': 'Full Name',
      'pt': '',
    },
    'm388iv35': {
      'en': 'Email address',
      'pt': '',
    },
    'qw1jeshv': {
      'en': 'Password',
      'pt': '',
    },
    'xs49q4uu': {
      'en': 'Confirm Password',
      'pt': '',
    },
    'tpb4cvxj': {
      'en': 'Create Account',
      'pt': '',
    },
    '4p2i6u5u': {
      'en': 'or',
      'pt': '',
    },
    'w6lj2023': {
      'en': 'Continue with Google',
      'pt': '',
    },
    'weripzln': {
      'en': 'Already have an account?  ',
      'pt': '',
    },
    '5h8ckram': {
      'en': 'Sign In',
      'pt': '',
    },
  },
  // ForgotPassword
  {
    'elb9krzi': {
      'en': 'Forgot Password?',
      'pt': '',
    },
    'b52m2out': {
      'en': 'Enter your email and we will send you a reset link',
      'pt': '',
    },
    'l6elacpb': {
      'en': 'Email address',
      'pt': '',
    },
    '67ui0fcq': {
      'en': 'Send Reset Link',
      'pt': '',
    },
    'fgb5gqwa': {
      'en': 'Remember your password? ',
      'pt': '',
    },
    'lq86w5w4': {
      'en': 'Sign In',
      'pt': '',
    },
  },
  // HormonalProfile
  {
    '63bm5c9y': {
      'en': 'Hormonal Profile',
      'pt': '',
    },
    '6w838ze3': {
      'en': 'Track your hormonal health',
      'pt': '',
    },
    'gy2o7q8x': {
      'en': 'Estrogen Level',
      'pt': '',
    },
    'c9h5brpk': {
      'en': 'Progesterone Level',
      'pt': '',
    },
    'lgxh6ln3': {
      'en': 'FSH Level',
      'pt': '',
    },
    '850bmm48': {
      'en': 'Current Phase',
      'pt': '',
    },
    'e4u660ht': {
      'en': 'Update Profile',
      'pt': '',
    },
  },
  // ProductDetail
  {
    'dcb6ci9m': {
      'en': 'Vitamin C Complex 1000mg',
      'pt': '',
    },
    'o3ocxr1q': {
      'en': '\$24.99',
      'pt': '',
    },
    'eqquqvlf': {
      'en': 'Description',
      'pt': '',
    },
    'kdp3g805': {
      'en':
          'Our premium Vitamin C Complex provides powerful antioxidant support to help maintain a healthy immune system. Formulated with bioflavonoids for enhanced absorption, this supplement is perfect for daily use to support overall wellness and vitality.',
      'pt': '',
    },
    'jznp6rfe': {
      'en': 'Benefits',
      'pt': '',
    },
    'akuyi68g': {
      'en': 'Boosts immune system function and overall defense',
      'pt': '',
    },
    'xng9eol1': {
      'en': 'Powerful antioxidant protection against free radicals',
      'pt': '',
    },
    'dy6usuzz': {
      'en': 'Supports collagen synthesis for healthy skin and joints',
      'pt': '',
    },
    '7iey7xld': {
      'en': 'Enhanced absorption with natural bioflavonoids',
      'pt': '',
    },
    'js1lgytu': {
      'en': 'Non-GMO, gluten-free, and suitable for vegetarians',
      'pt': '',
    },
    '5cbl1d4u': {
      'en': 'Add to Cart',
      'pt': '',
    },
  },
  // SubscriptionPlanpage
  {
    'xbxqnqmx': {
      'en': 'Choose Your Plan',
      'pt': '',
    },
    'de9205ns': {
      'en': 'Start your wellness journey',
      'pt': '',
    },
    'l1ij94vc': {
      'en': 'Bliss Free',
      'pt': '',
    },
    '1pp6q5tk': {
      'en': 'Basic wellness tracking',
      'pt': '',
    },
    '7wl929bv': {
      'en': 'Free',
      'pt': '',
    },
    '8a2e2mbm': {
      'en': 'Bliss Starter',
      'pt': '',
    },
    '4o4q2bl7': {
      'en': 'Essential wellness features',
      'pt': '',
    },
    '411l63ek': {
      'en': '\$29/month',
      'pt': '',
    },
    'kljm2t1x': {
      'en': 'Most Popular',
      'pt': '',
    },
    'hldk322x': {
      'en': 'Bliss Complete',
      'pt': '',
    },
    'iq7ydyat': {
      'en': 'Full wellness experience',
      'pt': '',
    },
    '8o60ray0': {
      'en': '\$49/month',
      'pt': '',
    },
    '0kx12b1h': {
      'en': 'Bliss Annual',
      'pt': '',
    },
    'yr910ntb': {
      'en': '2 months free - Best value',
      'pt': '',
    },
    'f2snh11i': {
      'en': '\$399/year',
      'pt': '',
    },
    'i24rx3na': {
      'en': 'Get Started',
      'pt': '',
    },
    'fv2qe5v6': {
      'en': 'Restore Purchase',
      'pt': '',
    },
  },
  // PlanComparison
  {
    '37utmg1k': {
      'en': 'Compare Plans',
      'pt': '',
    },
    '741qim51': {
      'en': 'Features',
      'pt': '',
    },
    'lw5v8m6d': {
      'en': 'Free',
      'pt': '',
    },
    '58r9qxj0': {
      'en': 'Starter',
      'pt': '',
    },
    'fbemuaea': {
      'en': 'Most Popular',
      'pt': '',
    },
    'e4ht8dzy': {
      'en': 'Annual',
      'pt': '',
    },
    '26wt5r2j': {
      'en': 'Symptom Tracker',
      'pt': '',
    },
    'wrq48t5l': {
      'en': 'AI Health Coach',
      'pt': '',
    },
    'shif7mo6': {
      'en': 'Hormonal Map',
      'pt': '',
    },
    '7i2zb1d8': {
      'en': 'Vitamin Guide',
      'pt': '',
    },
    'dzu40tcf': {
      'en': 'Nutrition Plan',
      'pt': '',
    },
    'hwjm6i3y': {
      'en': 'Skin & Hair Guide',
      'pt': '',
    },
    '18g1p83k': {
      'en': 'Medical Report',
      'pt': '',
    },
    'qzhh3oif': {
      'en': 'Price',
      'pt': '',
    },
    'irkbf8yh': {
      'en': 'Free',
      'pt': '',
    },
    '87oyg1m8': {
      'en': '\$29/mo',
      'pt': '',
    },
    '570anc9i': {
      'en': '\$49/mo',
      'pt': '',
    },
    '6el71e7w': {
      'en': '\$399/yr',
      'pt': '',
    },
  },
  // SubscriptionSuccessPage
  {
    'f38ny5y7': {
      'en': 'Welcome to Bliss!',
      'pt': '',
    },
    '7jgfhcxg': {
      'en': 'What\'s included in your plan:',
      'pt': '',
    },
    'vf5w1hgv': {
      'en': '🤖',
      'pt': '',
    },
    'hkuj9p6k': {
      'en': 'AI Health Coach',
      'pt': '',
    },
    '8tevmo7u': {
      'en': 'Personal guidance available 24/7',
      'pt': '',
    },
    'dc3w0kex': {
      'en': '🗺️',
      'pt': '',
    },
    '464cwhfc': {
      'en': 'Hormonal Map',
      'pt': '',
    },
    '561efzat': {
      'en': 'Understand your cycle deeply',
      'pt': '',
    },
    't3b7co6n': {
      'en': '💊',
      'pt': '',
    },
    'j5if3e7o': {
      'en': 'Vitamin Guide',
      'pt': '',
    },
    'u8bc48bb': {
      'en': 'Personalized supplement plan',
      'pt': '',
    },
    'k8y3yrsc': {
      'en': '📋',
      'pt': '',
    },
    'cb0qzjez': {
      'en': 'Medical Report',
      'pt': '',
    },
    'ln2ldgl2': {
      'en': 'Share insights with your doctor',
      'pt': '',
    },
    'c1rd8pd8': {
      'en': 'Your wellness journey starts today 🌸',
      'pt': '',
    },
    '64p4xuib': {
      'en': 'Start My Journey',
      'pt': '',
    },
    'xb045w65': {
      'en': 'Subscription managed via App Store / Google Play',
      'pt': '',
    },
  },
  // QuizIntro
  {
    'dxzat2hk': {
      'en': 'Let\'s Personalize Your Experience',
      'pt': '',
    },
    'l1usink2': {
      'en':
          'Answer a few quick questions so we can create your perfect personalized wellness plan',
      'pt': '',
    },
    'dclg6mbh': {
      'en': 'What to expect:',
      'pt': '',
    },
    '2g7zn7pn': {
      'en': '⏱️',
      'pt': '',
    },
    'q8vwi8a8': {
      'en': 'Takes only 2 minutes',
      'pt': '',
    },
    's8iseexv': {
      'en': 'Quick and easy questions about your health',
      'pt': '',
    },
    'vjb9i74h': {
      'en': '🔒',
      'pt': '',
    },
    '3wafd67r': {
      'en': 'Your answers are private and secure',
      'pt': '',
    },
    'rj0aidyv': {
      'en': 'We never share your personal information',
      'pt': '',
    },
    '17wk1p24': {
      'en': '🌸',
      'pt': '',
    },
    'ur06xxh1': {
      'en': 'Personalized just for you',
      'pt': '',
    },
    '1ubskn8i': {
      'en': 'Get recommendations based on your unique cycle',
      'pt': '',
    },
    'eyug94r5': {
      'en': 'Join thousands of women already on their wellness journey',
      'pt': '',
    },
    'zrj5lczc': {
      'en': 'Let\'s Get Started',
      'pt': '',
    },
    'boiqat5r': {
      'en': 'No commitment required • Cancel anytime',
      'pt': '',
    },
  },
  // NutritionGuidePage
  {
    '4b5cbc6q': {
      'en': 'Nutrition Guide',
      'pt': '',
    },
    'fjqmevzw': {
      'en': 'Eat for your cycle',
      'pt': '',
    },
    'k6fyvxlv': {
      'en': '🔴 Menstrual',
      'pt': '',
    },
    'guuwli7c': {
      'en': '🌱 Follicular',
      'pt': '',
    },
    '9a9hxv1r': {
      'en': '✨ Ovulatory',
      'pt': '',
    },
    'apmdww53': {
      'en': '🌙 Luteal',
      'pt': '',
    },
    'vvrp4cqs': {
      'en': 'Menstrual Phase',
      'pt': '',
    },
    'qgbub37q': {
      'en':
          'Focus on iron-rich foods and anti-inflammatory ingredients to support your body during menstruation',
      'pt': '',
    },
    'ibv5si8r': {
      'en': 'Best Foods This Phase',
      'pt': '',
    },
    '386wn1e7': {
      'en': '🥩',
      'pt': '',
    },
    '1c9p00ck': {
      'en': 'Red Meat',
      'pt': '',
    },
    'au0dj4bx': {
      'en': 'Iron Rich',
      'pt': '',
    },
    '3nezrj8q': {
      'en': '🫐',
      'pt': '',
    },
    '1vcnffmz': {
      'en': 'Blueberries',
      'pt': '',
    },
    'w6mkinlb': {
      'en': 'Antioxidants',
      'pt': '',
    },
    '07lnab0c': {
      'en': '🥬',
      'pt': '',
    },
    'fjn7ttcr': {
      'en': 'Spinach',
      'pt': '',
    },
    '66le0w9q': {
      'en': 'Folate',
      'pt': '',
    },
    'sjfqukbw': {
      'en': '🍫',
      'pt': '',
    },
    'dbhd2pkz': {
      'en': 'Dark Chocolate',
      'pt': '',
    },
    '2d4vnbg5': {
      'en': 'Magnesium',
      'pt': '',
    },
    '3u5n3wr9': {
      'en': '🫚',
      'pt': '',
    },
    '73jzjreh': {
      'en': 'Salmon',
      'pt': '',
    },
    '3pttac78': {
      'en': 'Omega 3',
      'pt': '',
    },
    'br0pg9nn': {
      'en': 'Foods to Avoid',
      'pt': '',
    },
    'fl37g1k7': {
      'en': '☕',
      'pt': '',
    },
    'ahdz4snf': {
      'en': 'Caffeine',
      'pt': '',
    },
    '6t2wnfdg': {
      'en': 'Increases cramps',
      'pt': '',
    },
    '71oeukzs': {
      'en': '🧂',
      'pt': '',
    },
    'mejnvktf': {
      'en': 'Salty Foods',
      'pt': '',
    },
    'djxpror4': {
      'en': 'Causes bloating',
      'pt': '',
    },
    '3td42n9s': {
      'en': '🍬',
      'pt': '',
    },
    '8eeghff4': {
      'en': 'Sugar',
      'pt': '',
    },
    'mksgjrga': {
      'en': 'Worsens mood',
      'pt': '',
    },
    '4wtr5tml': {
      'en': '🍺',
      'pt': '',
    },
    'c34s2bu3': {
      'en': 'Alcohol',
      'pt': '',
    },
    'oxabp1ap': {
      'en': 'Disrupts hormones',
      'pt': '',
    },
    'oq5u3jo3': {
      'en': 'Meal Ideas',
      'pt': '',
    },
    '8hn47p22': {
      'en': '🍳',
      'pt': '',
    },
    'lhuji461': {
      'en': 'Breakfast',
      'pt': '',
    },
    '461l5kha': {
      'en': 'Oatmeal with blueberries and dark chocolate chips',
      'pt': '',
    },
    'uu4yvtnc': {
      'en': '🥗',
      'pt': '',
    },
    'd3lhyo08': {
      'en': 'Lunch',
      'pt': '',
    },
    'm11bho46': {
      'en': 'Spinach salad with grilled salmon and lemon dressing',
      'pt': '',
    },
    'r3wh7fvf': {
      'en': '🍽️',
      'pt': '',
    },
    '3em9gjt5': {
      'en': 'Dinner',
      'pt': '',
    },
    '0zyk4cgc': {
      'en': 'Lean red meat with roasted vegetables and quinoa',
      'pt': '',
    },
  },
  // NutritionFollicularPage
  {
    'fcmc6677': {
      'en': 'Nutrition Guide',
      'pt': '',
    },
    'yu3l744f': {
      'en': 'Eat for your cycle',
      'pt': '',
    },
    'mug73a4w': {
      'en': '🔴 Menstrual',
      'pt': '',
    },
    'gu8hpkoq': {
      'en': '🌱 Follicular',
      'pt': '',
    },
    'edlpv29l': {
      'en': '✨ Ovulatory',
      'pt': '',
    },
    '6d6fjejg': {
      'en': '🌙 Luteal',
      'pt': '',
    },
    '2va8px1x': {
      'en': 'Follicular Phase',
      'pt': '',
    },
    '5l05ro78': {
      'en':
          'Focus on fresh light foods that support rising estrogen and boost your energy levels',
      'pt': '',
    },
    'vi12jcbc': {
      'en': 'Best Foods This Phase',
      'pt': '',
    },
    'xltyhs53': {
      'en': '🥚',
      'pt': '',
    },
    'bk85whxx': {
      'en': 'Eggs',
      'pt': '',
    },
    '06ri363h': {
      'en': 'Protein boost',
      'pt': '',
    },
    '4hljdvev': {
      'en': '🥦',
      'pt': '',
    },
    'mn9ve7an': {
      'en': 'Broccoli',
      'pt': '',
    },
    'd4j2qaix': {
      'en': 'Estrogen support',
      'pt': '',
    },
    'si0stla5': {
      'en': '🍓',
      'pt': '',
    },
    'vfnyxe5g': {
      'en': 'Strawberries',
      'pt': '',
    },
    'vynayw5k': {
      'en': 'Vitamin C',
      'pt': '',
    },
    'i33w1f3t': {
      'en': '🥑',
      'pt': '',
    },
    'fzr7qwwp': {
      'en': 'Avocado',
      'pt': '',
    },
    '3rrup1ji': {
      'en': 'Healthy fats',
      'pt': '',
    },
    'fijeoa4i': {
      'en': '🌾',
      'pt': '',
    },
    'ezxvyk6o': {
      'en': 'Quinoa',
      'pt': '',
    },
    'j57sx77i': {
      'en': 'Complex carbs',
      'pt': '',
    },
    '0cv5izt7': {
      'en': 'Foods to Avoid',
      'pt': '',
    },
    'z6bnz67k': {
      'en': '🍔',
      'pt': '',
    },
    'vitfp3xm': {
      'en': 'Processed Food',
      'pt': '',
    },
    '20ha9b4t': {
      'en': 'Disrupts hormones',
      'pt': '',
    },
    '0hopmsjh': {
      'en': '🧁',
      'pt': '',
    },
    '7kgefw7t': {
      'en': 'Refined Sugar',
      'pt': '',
    },
    'u5t3vp6w': {
      'en': 'Causes inflammation',
      'pt': '',
    },
    '28dz5v2a': {
      'en': '🥛',
      'pt': '',
    },
    '7roge07a': {
      'en': 'Dairy',
      'pt': '',
    },
    '9doldeqk': {
      'en': 'May cause bloating',
      'pt': '',
    },
    '9lozrzmk': {
      'en': '🍟',
      'pt': '',
    },
    'w8itpm2s': {
      'en': 'Fried Foods',
      'pt': '',
    },
    '7skhoik6': {
      'en': 'Increases estrogen',
      'pt': '',
    },
    'pkjso4jk': {
      'en': 'Meal Ideas',
      'pt': '',
    },
    'l7w3l899': {
      'en': '🍳',
      'pt': '',
    },
    'kzld2dpa': {
      'en': 'Breakfast',
      'pt': '',
    },
    '6lt55knc': {
      'en': 'Scrambled eggs with avocado toast and strawberries',
      'pt': '',
    },
    'kacsn985': {
      'en': '🥗',
      'pt': '',
    },
    '9gj1cw1x': {
      'en': 'Lunch',
      'pt': '',
    },
    's6er0o1q': {
      'en': 'Quinoa bowl with broccoli and lemon tahini dressing',
      'pt': '',
    },
    'bfn40478': {
      'en': '🍽️',
      'pt': '',
    },
    'kyjrbfwh': {
      'en': 'Dinner',
      'pt': '',
    },
    'obs16o6b': {
      'en': 'Grilled chicken with roasted vegetables and brown rice',
      'pt': '',
    },
  },
  // NutritionOvulatoryPage
  {
    'jkuxdvo9': {
      'en': 'Nutrition Guide',
      'pt': '',
    },
    '56rbh3wi': {
      'en': 'Eat for your cycle',
      'pt': '',
    },
    '37qytf8s': {
      'en': '🔴 Menstrual',
      'pt': '',
    },
    's430n6ar': {
      'en': '🌱 Follicular',
      'pt': '',
    },
    'arkhcodv': {
      'en': '✨ Ovulatory',
      'pt': '',
    },
    'wvcexgzw': {
      'en': '🌙 Luteal',
      'pt': '',
    },
    '4qg5gho7': {
      'en': 'Ovulatory Phase',
      'pt': '',
    },
    'zhneglof': {
      'en':
          'Focus on light anti-inflammatory foods that support peak energy and hormone balance',
      'pt': '',
    },
    'q77d6skp': {
      'en': 'Best Foods This Phase',
      'pt': '',
    },
    'pdoksk6o': {
      'en': '🫐',
      'pt': '',
    },
    'sxnffva3': {
      'en': 'Blueberries',
      'pt': '',
    },
    'm962iber': {
      'en': 'Antioxidants',
      'pt': '',
    },
    'uw9smnm8': {
      'en': '🥗',
      'pt': '',
    },
    '824it4sv': {
      'en': 'Leafy Greens',
      'pt': '',
    },
    'w2vpmr0k': {
      'en': 'Fiber rich',
      'pt': '',
    },
    '3conf53k': {
      'en': '🍋',
      'pt': '',
    },
    'vwuao6zu': {
      'en': 'Lemon',
      'pt': '',
    },
    '41kjgf1t': {
      'en': 'Detox support',
      'pt': '',
    },
    '041t0hxo': {
      'en': '🌰',
      'pt': '',
    },
    'sx051ah9': {
      'en': 'Almonds',
      'pt': '',
    },
    'negcxxe0': {
      'en': 'Vitamin E',
      'pt': '',
    },
    '5mnp71b1': {
      'en': '🫛',
      'pt': '',
    },
    '01y3kpoo': {
      'en': 'Edamame',
      'pt': '',
    },
    'ryrnarbq': {
      'en': 'Plant protein',
      'pt': '',
    },
    'owndumsl': {
      'en': 'Foods to Avoid',
      'pt': '',
    },
    'tplxiqfc': {
      'en': '🌶️',
      'pt': '',
    },
    '0k26n5zr': {
      'en': 'Spicy Foods',
      'pt': '',
    },
    'fex92d0o': {
      'en': 'Causes inflammation',
      'pt': '',
    },
    'b654uco4': {
      'en': '☕',
      'pt': '',
    },
    '89g7wr9h': {
      'en': 'Caffeine',
      'pt': '',
    },
    'n3zyrk0v': {
      'en': 'Disrupts hormones',
      'pt': '',
    },
    'yxsjzvji': {
      'en': '🍷',
      'pt': '',
    },
    'nokxpnt3': {
      'en': 'Alcohol',
      'pt': '',
    },
    '60hziy5a': {
      'en': 'Affects ovulation',
      'pt': '',
    },
    '54kzpzze': {
      'en': '🧂',
      'pt': '',
    },
    'xd59bs1k': {
      'en': 'Salty Foods',
      'pt': '',
    },
    'kdvwmzs9': {
      'en': 'Causes bloating',
      'pt': '',
    },
    'fdajnsng': {
      'en': 'Meal Ideas',
      'pt': '',
    },
    'a81vu4db': {
      'en': '🍳',
      'pt': '',
    },
    'h1b0t7w4': {
      'en': 'Breakfast',
      'pt': '',
    },
    '100ufspk': {
      'en': 'Blueberry smoothie bowl with almonds and chia seeds',
      'pt': '',
    },
    'mrrvd4d6': {
      'en': '🥗',
      'pt': '',
    },
    'u9kcshlc': {
      'en': 'Lunch',
      'pt': '',
    },
    'ets8hpfi': {
      'en': 'Large leafy green salad with edamame and lemon dressing',
      'pt': '',
    },
    'xtu7k7u7': {
      'en': '🍽️',
      'pt': '',
    },
    '75mv3tzu': {
      'en': 'Dinner',
      'pt': '',
    },
    'n3488hk0': {
      'en': 'Grilled fish with steamed vegetables and brown rice',
      'pt': '',
    },
  },
  // NutritionLutealPage
  {
    '77vc4sf8': {
      'en': 'Nutrition Guide',
      'pt': '',
    },
    '7ju432a3': {
      'en': 'Eat for your cycle',
      'pt': '',
    },
    'o619ysej': {
      'en': '🔴 Menstrual',
      'pt': '',
    },
    'c0y6szva': {
      'en': '🌱 Follicular',
      'pt': '',
    },
    '7doy6fvd': {
      'en': '✨ Ovulatory',
      'pt': '',
    },
    'cl246orx': {
      'en': '🌙 Luteal',
      'pt': '',
    },
    'tzaqikml': {
      'en': 'Luteal Phase',
      'pt': '',
    },
    'cf3v3km2': {
      'en':
          'Focus on magnesium-rich and mood-boosting foods to ease PMS symptoms and support progesterone',
      'pt': '',
    },
    '09rtb4vr': {
      'en': 'Best Foods This Phase',
      'pt': '',
    },
    'qeeztx86': {
      'en': '🍫',
      'pt': '',
    },
    'mshtt1q2': {
      'en': 'Dark Chocolate',
      'pt': '',
    },
    'u5dnydzg': {
      'en': 'Boosts mood',
      'pt': '',
    },
    'h9c3xuqc': {
      'en': '🍠',
      'pt': '',
    },
    'ql1xkog6': {
      'en': 'Sweet Potato',
      'pt': '',
    },
    'ogmdv7vo': {
      'en': 'Complex carbs',
      'pt': '',
    },
    'dqnmgbz9': {
      'en': '🥜',
      'pt': '',
    },
    'v27ikdwn': {
      'en': 'Pumpkin Seeds',
      'pt': '',
    },
    'z9ceeljj': {
      'en': 'Magnesium rich',
      'pt': '',
    },
    'd7cl5tag': {
      'en': '🍌',
      'pt': '',
    },
    'v4q56gv9': {
      'en': 'Banana',
      'pt': '',
    },
    'ikya1rg5': {
      'en': 'Vitamin B6',
      'pt': '',
    },
    '4ihz7myq': {
      'en': '🫘',
      'pt': '',
    },
    'zl2uw85l': {
      'en': 'Lentils',
      'pt': '',
    },
    'q8v1kcyh': {
      'en': 'Iron and fiber',
      'pt': '',
    },
    'iyot62y4': {
      'en': 'Best Foods This Phase',
      'pt': '',
    },
    'chky1max': {
      'en': '☕',
      'pt': '',
    },
    'w8kpmtbd': {
      'en': 'Caffeine',
      'pt': '',
    },
    'rq8eedsu': {
      'en': 'Worsens anxiety',
      'pt': '',
    },
    'vfxsufay': {
      'en': '🧂',
      'pt': '',
    },
    '00wk6ezk': {
      'en': 'Salty Foods',
      'pt': '',
    },
    '1x7czaey': {
      'en': 'Increases bloating',
      'pt': '',
    },
    '8cxek1xo': {
      'en': '🍬',
      'pt': '',
    },
    'q7r0vo3j': {
      'en': 'Sugar',
      'pt': '',
    },
    '2z1rgsv2': {
      'en': 'Worsens mood swings',
      'pt': '',
    },
    'kgkj4fyo': {
      'en': '🥩',
      'pt': '',
    },
    '1wqz5jjh': {
      'en': 'Red Meat',
      'pt': '',
    },
    'xrtstu9g': {
      'en': 'Increases inflammation',
      'pt': '',
    },
    'g7rltf2z': {
      'en': 'Meal Ideas',
      'pt': '',
    },
    'hayd6m6o': {
      'en': '🍳',
      'pt': '',
    },
    '1wc4kagn': {
      'en': 'Breakfast',
      'pt': '',
    },
    '1ku3zenj': {
      'en': 'Banana oatmeal with pumpkin seeds and dark chocolate chips',
      'pt': '',
    },
    's30rmo96': {
      'en': '🥗',
      'pt': '',
    },
    'q2miv9h3': {
      'en': 'Lunch',
      'pt': '',
    },
    'yj5kn2jj': {
      'en': 'Lentil soup with sweet potato and whole grain bread',
      'pt': '',
    },
    'kno5mqud': {
      'en': '🍽️',
      'pt': '',
    },
    'qfrnjb9g': {
      'en': 'Dinner',
      'pt': '',
    },
    'vhlysflc': {
      'en': 'Baked salmon with roasted sweet potato and steamed broccoli',
      'pt': '',
    },
  },
  // SkinHairGuidePage
  {
    'lk9b0rvy': {
      'en': 'Skin & Hair Guide',
      'pt': '',
    },
    'fr4kw4fd': {
      'en': 'Glow with your cycle',
      'pt': '',
    },
    'fez3pu39': {
      'en': '🔴 Menstrual',
      'pt': '',
    },
    'zpdwyz66': {
      'en': '🌱 Follicular',
      'pt': '',
    },
    'pn887gph': {
      'en': '✨ Ovulatory',
      'pt': '',
    },
    'cr38ts63': {
      'en': '🌙 Luteal',
      'pt': '',
    },
    'pvg95pwt': {
      'en': 'Menstrual Phase',
      'pt': '',
    },
    't7ryo5qt': {
      'en':
          'Your skin may feel dry and sensitive during this phase. Focus on gentle hydrating routines and anti-inflammatory ingredients to calm redness and restore moisture balance',
      'pt': '',
    },
    'ko61fclu': {
      'en': 'Skin Care Tips',
      'pt': '',
    },
    'hbiyddtf': {
      'en': '💧',
      'pt': '',
    },
    'xzlz7qsn': {
      'en': 'Hydrate',
      'pt': '',
    },
    'hfcphd11': {
      'en': 'Use gentle moisturizer',
      'pt': '',
    },
    'igj3d2ap': {
      'en': '🧴',
      'pt': '',
    },
    'd172q65a': {
      'en': 'Cleanse',
      'pt': '',
    },
    '64vk1jjw': {
      'en': 'Mild cleanser only',
      'pt': '',
    },
    'mmsk2k9o': {
      'en': '☀️',
      'pt': '',
    },
    'jvgpgoe5': {
      'en': 'SPF',
      'pt': '',
    },
    'dkmhla16': {
      'en': 'Never skip sunscreen',
      'pt': '',
    },
    'gqu8h1ap': {
      'en': '🌿',
      'pt': '',
    },
    'wjjgmv54': {
      'en': 'Soothe',
      'pt': '',
    },
    'ih8wpxpn': {
      'en': 'Aloe vera gel',
      'pt': '',
    },
    'ou3ymaku': {
      'en': '❌',
      'pt': '',
    },
    '4b574gu9': {
      'en': 'No Exfoliate',
      'pt': '',
    },
    'a1xeng0s': {
      'en': 'Skin too sensitive',
      'pt': '',
    },
    'elk20s69': {
      'en': 'Hair Care Tips',
      'pt': '',
    },
    'aaxr9o8p': {
      'en': '🚿',
      'pt': '',
    },
    'vu6k25b7': {
      'en': 'Gentle Wash',
      'pt': '',
    },
    '5zxabe7u': {
      'en': 'Sulfate free shampoo',
      'pt': '',
    },
    '3k668eux': {
      'en': '💆',
      'pt': '',
    },
    '2ckp88s5': {
      'en': 'Scalp Massage',
      'pt': '',
    },
    'eh6cod4r': {
      'en': 'Boost circulation',
      'pt': '',
    },
    'ov3pqf3h': {
      'en': '🌡️',
      'pt': '',
    },
    'eygqq3c8': {
      'en': 'No Heat',
      'pt': '',
    },
    '3y6np3e4': {
      'en': 'Avoid hot tools',
      'pt': '',
    },
    '90ydjn29': {
      'en': '🫚',
      'pt': '',
    },
    '4p9i30w2': {
      'en': 'Hair Oil',
      'pt': '',
    },
    'ogg9r7ln': {
      'en': 'Nourish dry ends',
      'pt': '',
    },
    '7elyjq95': {
      'en': 'Hero Ingredients',
      'pt': '',
    },
    '9dmtxd1g': {
      'en': '🌹',
      'pt': '',
    },
    'u7gry7qo': {
      'en': 'Rosehip Oil',
      'pt': '',
    },
    'yin8u40y': {
      'en': 'Reduces inflammation and hydrates sensitive skin',
      'pt': '',
    },
    '6rs1pnw3': {
      'en': '🫐',
      'pt': '',
    },
    '4db2k2mb': {
      'en': 'Vitamin C',
      'pt': '',
    },
    '0ss21hct': {
      'en': 'Brightens skin and boosts collagen',
      'pt': '',
    },
    'z1kgpkjq': {
      'en': '🌿',
      'pt': '',
    },
    'i0qbuiim': {
      'en': 'Aloe Vera',
      'pt': '',
    },
    '36g16cle': {
      'en': 'Soothes redness and irritation',
      'pt': '',
    },
  },
  // SkinHairFollicularPage
  {
    'bu6z2lp7': {
      'en': 'Skin & Hair Guide',
      'pt': '',
    },
    '4yu2821s': {
      'en': 'Glow with your cycle',
      'pt': '',
    },
    'lh2htkbn': {
      'en': '🔴 Menstrual',
      'pt': '',
    },
    'pufoshlb': {
      'en': '🌱 Follicular',
      'pt': '',
    },
    '2imez3i7': {
      'en': '✨ Ovulatory',
      'pt': '',
    },
    'bscvxwvx': {
      'en': '🌙 Luteal',
      'pt': '',
    },
    'nklssajy': {
      'en': 'Follicular Phase',
      'pt': '',
    },
    'vkj8aig1': {
      'en':
          'Your skin is at its clearest and most radiant. Estrogen is rising so take advantage with brightening and energizing treatments',
      'pt': '',
    },
    'x5gua75x': {
      'en': 'Skin Care Tips',
      'pt': '',
    },
    'vye4icmf': {
      'en': '✨',
      'pt': '',
    },
    'qzicqgft': {
      'en': 'Exfoliate',
      'pt': '',
    },
    'pjxvo4ko': {
      'en': 'Gentle exfoliation now',
      'pt': '',
    },
    'sdv7d5dj': {
      'en': '🍋',
      'pt': '',
    },
    '65un0f31': {
      'en': 'Brighten',
      'pt': '',
    },
    '4ojy0fdp': {
      'en': 'Vitamin C serum',
      'pt': '',
    },
    'fmrtrmwf': {
      'en': '💆',
      'pt': '',
    },
    'osk3rjmu': {
      'en': 'Facial Massage',
      'pt': '',
    },
    'd3lbbfdg': {
      'en': 'Boost circulation',
      'pt': '',
    },
    'j2ryqo73': {
      'en': '🌊',
      'pt': '',
    },
    'spvl1gmx': {
      'en': 'Hydrate',
      'pt': '',
    },
    '0p5ge8wm': {
      'en': 'Lightweight moisturizer',
      'pt': '',
    },
    'j1xsyvjf': {
      'en': '☀️',
      'pt': '',
    },
    '336fhiwv': {
      'en': 'SPF',
      'pt': '',
    },
    'z634t4cz': {
      'en': 'Always wear sunscreen',
      'pt': '',
    },
    '39vhohlx': {
      'en': 'Hair Care Tips',
      'pt': '',
    },
    'u7wdm7xw': {
      'en': '💇',
      'pt': '',
    },
    'ferb48p4': {
      'en': 'Trim Hair',
      'pt': '',
    },
    'pznedyxm': {
      'en': 'Best time to cut',
      'pt': '',
    },
    't7sdnsge': {
      'en': '🎨',
      'pt': '',
    },
    '8k5cnl63': {
      'en': 'Color Hair',
      'pt': '',
    },
    'kn9xz9ce': {
      'en': 'Ideal for coloring',
      'pt': '',
    },
    '82rc7dr4': {
      'en': '💪',
      'pt': '',
    },
    'pbpdgucp': {
      'en': 'Strengthen',
      'pt': '',
    },
    'ybfncvcz': {
      'en': 'Protein treatment',
      'pt': '',
    },
    'd9mfiox7': {
      'en': '✨',
      'pt': '',
    },
    '4wwl9nfw': {
      'en': 'Shine Boost',
      'pt': '',
    },
    '6p59k1gu': {
      'en': 'Glossing treatment',
      'pt': '',
    },
    'e400djef': {
      'en': 'Hero Ingredients',
      'pt': '',
    },
    'cwqw11nj': {
      'en': '🍋',
      'pt': '',
    },
    'u95v4u5v': {
      'en': 'Vitamin C Serum',
      'pt': '',
    },
    '50mnq0gt': {
      'en': 'Brightens skin and evens out skin tone during rising estrogen',
      'pt': '',
    },
    'yz6328l8': {
      'en': '🌸',
      'pt': '',
    },
    '4mg2mcc5': {
      'en': 'Niacinamide',
      'pt': '',
    },
    'kewvzglu': {
      'en': 'Refines pores and boosts skin radiance during follicular phase',
      'pt': '',
    },
    '6mglk2wf': {
      'en': '🥑',
      'pt': '',
    },
    'q45815kd': {
      'en': 'Avocado Oil',
      'pt': '',
    },
    'rn5rhcst': {
      'en': 'Deeply nourishes hair and adds brilliant shine and strength',
      'pt': '',
    },
    'gqqtxgp1': {
      'en': '⚠️',
      'pt': '',
    },
    'cxszm2ld': {
      'en': 'Avoid This Phase',
      'pt': '',
    },
    '1maart5f': {
      'en':
          'Avoid heavy oils and thick creams as your skin produces more sebum during follicular phase',
      'pt': '',
    },
  },
  // SkinHairOvulatory
  {
    '4chlca80': {
      'en': 'Skin & Hair Guide',
      'pt': '',
    },
    '6fhjm9sd': {
      'en': 'Glow with your cycle',
      'pt': '',
    },
    'xge0ibus': {
      'en': '🔴 Menstrual',
      'pt': '',
    },
    'mwqzlhwh': {
      'en': '🌱 Follicular',
      'pt': '',
    },
    'jz42mu5g': {
      'en': '✨ Ovulatory',
      'pt': '',
    },
    'xqj0r77q': {
      'en': '🌙 Luteal',
      'pt': '',
    },
    'xyxym90n': {
      'en': 'Ovulatory Phase',
      'pt': '',
    },
    '991kv5sy': {
      'en':
          'This is your glow up moment! Estrogen peaks so your skin looks its absolute best. Hair is full and shiny. Maintain and protect this natural radiance',
      'pt': '',
    },
    'im823hcf': {
      'en': 'Skin Care Tips',
      'pt': '',
    },
    'cn7ygjyd': {
      'en': '🌟',
      'pt': '',
    },
    '4hj33vrf': {
      'en': 'Glow Mask',
      'pt': '',
    },
    'a8xwn7fh': {
      'en': 'Radiance boosting mask',
      'pt': '',
    },
    'euy8xmuw': {
      'en': '💧',
      'pt': '',
    },
    'v9z6vbx6': {
      'en': 'Hydrate',
      'pt': '',
    },
    'jr4lcijw': {
      'en': 'Keep skin plump',
      'pt': '',
    },
    'rntu3snf': {
      'en': '☀️',
      'pt': '',
    },
    '3spgp3q2': {
      'en': 'SPF',
      'pt': '',
    },
    '2m0tdpog': {
      'en': 'Protect your glow',
      'pt': '',
    },
    'wy6vpbmy': {
      'en': '🧖',
      'pt': '',
    },
    '9ca7mi7m': {
      'en': 'Face Mask',
      'pt': '',
    },
    'gc4enfpw': {
      'en': 'Hydrating sheet mask',
      'pt': '',
    },
    'mipvy4re': {
      'en': '💆',
      'pt': '',
    },
    '61mqjjsw': {
      'en': 'Jade Roll',
      'pt': '',
    },
    'd4slvs0c': {
      'en': 'Depuff and tone',
      'pt': '',
    },
    'tor883p7': {
      'en': 'Hair Care Tips',
      'pt': '',
    },
    'tbaxff8u': {
      'en': '✨',
      'pt': '',
    },
    '7q137dg2': {
      'en': 'Embrace It',
      'pt': '',
    },
    '5y1sbtrz': {
      'en': 'Hair is at its best',
      'pt': '',
    },
    'rzkbt2kv': {
      'en': '🌊',
      'pt': '',
    },
    'pd9s6jla': {
      'en': 'Beach Waves',
      'pt': '',
    },
    'kz28alxp': {
      'en': 'Style freely now',
      'pt': '',
    },
    'xxq4lxbi': {
      'en': '💇',
      'pt': '',
    },
    'tyhjy66r': {
      'en': 'Blowout',
      'pt': '',
    },
    '1q73cbl5': {
      'en': 'Volume at its peak',
      'pt': '',
    },
    'cicl3bbf': {
      'en': '🌸',
      'pt': '',
    },
    '00q9tytx': {
      'en': 'Light Oil',
      'pt': '',
    },
    'mmch3h2m': {
      'en': 'Argan oil for shine',
      'pt': '',
    },
    'spmvk3s0': {
      'en': 'Hero Ingredients',
      'pt': '',
    },
    'u646okb6': {
      'en': '🌟',
      'pt': '',
    },
    'oveu4pfp': {
      'en': 'Hyaluronic Acid',
      'pt': '',
    },
    '1jlojzvh': {
      'en': 'Locks in moisture and keeps skin plump and dewy during ovulation',
      'pt': '',
    },
    'a7r8jmsd': {
      'en': '🌹',
      'pt': '',
    },
    'zw6b2s4b': {
      'en': 'Rose Water',
      'pt': '',
    },
    'bcm214pm': {
      'en': 'Balances skin tone and enhances natural glow at peak estrogen',
      'pt': '',
    },
    '1c8p4d49': {
      'en': '🫚 ',
      'pt': '',
    },
    'fi2b4gmc': {
      'en': 'Argan Oil',
      'pt': '',
    },
    '2r6de7d2': {
      'en':
          'Adds brilliant shine and tames frizz when hair is at its strongest',
      'pt': '',
    },
  },
  // SkinHairLutealPage
  {
    'b0epcnes': {
      'en': 'Skin & Hair Guide',
      'pt': '',
    },
    'zohs4ely': {
      'en': 'Glow with your cycle',
      'pt': '',
    },
    '4pjm1egn': {
      'en': '🔴 Menstrual',
      'pt': '',
    },
    'op7le752': {
      'en': '🌱 Follicular',
      'pt': '',
    },
    '3wru5dcj': {
      'en': '✨ Ovulatory',
      'pt': '',
    },
    'jalu9p8h': {
      'en': '🌙 Luteal',
      'pt': '',
    },
    't69dih6p': {
      'en': 'Luteal Phase',
      'pt': '',
    },
    '4ajtbg15': {
      'en':
          'Progesterone rises and skin may become oily and prone to breakouts. Focus on balancing and clarifying treatments to prevent PMS skin flares',
      'pt': '',
    },
    '5ktkjhtb': {
      'en': 'Skin Care Tips',
      'pt': '',
    },
    '95c1f9gx': {
      'en': '🧼',
      'pt': '',
    },
    'g5jc0u6h': {
      'en': 'Deep Cleanse',
      'pt': '',
    },
    '9gu27lx3': {
      'en': 'Remove excess oil',
      'pt': '',
    },
    'bc46ae4a': {
      'en': '🌿',
      'pt': '',
    },
    '4kvn7kaj': {
      'en': 'Clay Mask',
      'pt': '',
    },
    'xvkd7re3': {
      'en': 'Unclog pores',
      'pt': '',
    },
    'e4tkhi9g': {
      'en': '💧',
      'pt': '',
    },
    'tlj914xz': {
      'en': 'Light Moisturize',
      'pt': '',
    },
    'hjkd3j97': {
      'en': 'Oil free formula',
      'pt': '',
    },
    'sllpa35x': {
      'en': '☀️',
      'pt': '',
    },
    's8obrhk4': {
      'en': 'SPF',
      'pt': '',
    },
    '1iw4c2fg': {
      'en': 'Always wear sunscreen',
      'pt': '',
    },
    'vn9ja08i': {
      'en': '❌',
      'pt': '',
    },
    'uscxuto2': {
      'en': 'No Heavy Oils',
      'pt': '',
    },
    '99dwbc5c': {
      'en': 'Avoid pore clogging',
      'pt': '',
    },
    'dfy7w9xt': {
      'en': 'Hair Care Tips',
      'pt': '',
    },
    'zzyofohf': {
      'en': '🧴',
      'pt': '',
    },
    'du3fh4wv': {
      'en': 'Clarify',
      'pt': '',
    },
    'x2qj77z6': {
      'en': 'Clarifying shampoo',
      'pt': '',
    },
    'o78c4gvn': {
      'en': '💆',
      'pt': '',
    },
    'ibe9al5c': {
      'en': 'Scalp Care',
      'pt': '',
    },
    'lwzbqmw7': {
      'en': 'Balance oil production',
      'pt': '',
    },
    'fqx4tpi7': {
      'en': '🌬️',
      'pt': '',
    },
    'lnrqt9sk': {
      'en': 'Air Dry',
      'pt': '',
    },
    '30iqrpgd': {
      'en': 'Reduce heat stress',
      'pt': '',
    },
    'fbgx2qir': {
      'en': '🌿',
      'pt': '',
    },
    'mfta401r': {
      'en': 'Dry Shampoo',
      'pt': '',
    },
    'onedxvqj': {
      'en': 'Control oiliness',
      'pt': '',
    },
    '3zrtgj2w': {
      'en': 'Hero Ingredients',
      'pt': '',
    },
    'zxx362lu': {
      'en': '🌿',
      'pt': '',
    },
    'l1poygbk': {
      'en': 'Salicylic Acid',
      'pt': '',
    },
    'xy53ebb1': {
      'en': 'Unclogs pores and prevents hormonal breakouts during luteal phase',
      'pt': '',
    },
    'whn8qmi7': {
      'en': '🌸',
      'pt': '',
    },
    'c9mzi0ee': {
      'en': 'Niacinamide',
      'pt': '',
    },
    'yrcvc97m': {
      'en': 'Controls sebum production and reduces redness and inflammation',
      'pt': '',
    },
  },
  // MedicalReportPage
  {
    'o4h3j54c': {
      'en': 'Medical Report',
      'pt': '',
    },
    '0ixdp3iq': {
      'en': 'Share with your doctor',
      'pt': '',
    },
    '3sn3tet2': {
      'en': 'Report Period',
      'pt': '',
    },
    'c1t6bzpx': {
      'en': 'Last 30 days',
      'pt': '',
    },
    '1nlid16t': {
      'en': 'Cycle Summary',
      'pt': '',
    },
    'gkg1j20b': {
      'en': 'Avg Cycle',
      'pt': '',
    },
    'sxdboyhf': {
      'en': 'Days',
      'pt': '',
    },
    'm4fer1li': {
      'en': 'Period',
      'pt': '',
    },
    '3vm7o9rr': {
      'en': 'Days',
      'pt': '',
    },
    '3k5zx3j9': {
      'en': 'Ovulation Days',
      'pt': '',
    },
    'tk7ekd19': {
      'en': 'Most Frequent Symptoms',
      'pt': '',
    },
    'crrepcfh': {
      'en': '😫',
      'pt': '',
    },
    '7tm7ecc0': {
      'en': 'Fatigue',
      'pt': '',
    },
    'iwwug9qq': {
      'en': '🤕',
      'pt': '',
    },
    'fmfbq7dv': {
      'en': 'Headache',
      'pt': '',
    },
    'fo1izirl': {
      'en': '🤢',
      'pt': '',
    },
    'nwld6fu6': {
      'en': 'Bloating',
      'pt': '',
    },
    '5f1r2bzl': {
      'en': '😰',
      'pt': '',
    },
    'e9rmoec2': {
      'en': 'Anxiety',
      'pt': '',
    },
    '6ik3fl1v': {
      'en': '😴',
      'pt': '',
    },
    'lu2sw2jj': {
      'en': 'Low Energy',
      'pt': '',
    },
    'c38utuyx': {
      'en': 'Mood Overview',
      'pt': '',
    },
    'aa3les7d': {
      'en': '😊',
      'pt': '',
    },
    'jd1dwtlv': {
      'en': 'Calm',
      'pt': '',
    },
    'almu8ooa': {
      'en': '😴',
      'pt': '',
    },
    '463iavbu': {
      'en': 'Tired',
      'pt': '',
    },
    'dw30nhun': {
      'en': '😔',
      'pt': '',
    },
    'ydma2oqt': {
      'en': 'Low',
      'pt': '',
    },
    '8ywin0ag': {
      'en': '😤',
      'pt': '',
    },
    'eegqher6': {
      'en': 'Anxious',
      'pt': '',
    },
    'l3q5gdql': {
      'en': 'Energy Levels',
      'pt': '',
    },
    '6o9ij6pl': {
      'en': '⚡',
      'pt': '',
    },
    'c0vxkv0n': {
      'en': 'High Energy',
      'pt': '',
    },
    'whjppwk2': {
      'en': '🔋',
      'pt': '',
    },
    'i8kd69p1': {
      'en': 'Medium Energy',
      'pt': '',
    },
    '8oxirh0n': {
      'en': '🪫',
      'pt': '',
    },
    'xp35stc6': {
      'en': 'Low Energy',
      'pt': '',
    },
    'akvzhgor': {
      'en': 'Notes for Doctor',
      'pt': '',
    },
    'fu0fgvep': {
      'en':
          'Patient reports regular 28-day cycles with moderate PMS symptoms including fatigue, bloating and mood changes during luteal phase. Headaches frequently reported during menstrual phase. Energy levels generally good during follicular and ovulatory phases.',
      'pt': '',
    },
    'irqdvu29': {
      'en': 'Current Supplements',
      'pt': '',
    },
    '9jgjan6n': {
      'en': '💊',
      'pt': '',
    },
    'kgylrnrt': {
      'en': 'Magnesium 400mg',
      'pt': '',
    },
    's8iqgmh8': {
      'en': 'Daily',
      'pt': '',
    },
    'syg5fuu2': {
      'en': '💊',
      'pt': '',
    },
    'f9y8o6j6': {
      'en': 'Vitamin D3 2000IU',
      'pt': '',
    },
    's63k8nag': {
      'en': 'Daily',
      'pt': '',
    },
    '08ezjpr8': {
      'en': '💊',
      'pt': '',
    },
    'ibkcbvq3': {
      'en': 'Omega 3 1000mg',
      'pt': '',
    },
    'bf63e3ds': {
      'en': 'Daily',
      'pt': '',
    },
    'x9nfpvz6': {
      'en': '📄 Export PDF',
      'pt': '',
    },
  },
  // OurStory
  {
    'i7c08s6g': {
      'en': 'Our Story',
      'pt': '',
    },
    'u1i66age': {
      'en': 'Born from personal experience',
      'pt': '',
    },
    '1rvg2414': {
      'en': 'A story of resilience and purpose',
      'pt': '',
    },
    '8igjlvji': {
      'en': 'The Founder\'s Story',
      'pt': '',
    },
    '9o21uqh5': {
      'en':
          'At 43, Mona Mili began experiencing the first signs of perimenopause. Hot flashes, sleepless nights, mood changes — and no place to turn.',
      'pt': '',
    },
    '5zit4ph7': {
      'en':
          'She searched for an app that could truly support women through this journey, and found nothing. So she built Bliss.',
      'pt': '',
    },
    'ac3ft19s': {
      'en':
          'Every feature, every word, every detail was designed with love — because Mona knows exactly how you feel.',
      'pt': '',
    },
    '3tk1ia5q': {
      'en': 'Mona Mili',
      'pt': '',
    },
    'hp1hd4wm': {
      'en': 'Founder & CEO, Bliss',
      'pt': '',
    },
    'r10zba9v': {
      'en': 'Why Bliss?',
      'pt': '',
    },
    'fwretr97': {
      'en': 'Real Information',
      'pt': '',
    },
    'zgd3u4b5': {
      'en': 'Science-backed content you can trust',
      'pt': '',
    },
    '68b6qfl8': {
      'en': '24/7 AI Support',
      'pt': '',
    },
    'ua086cr9': {
      'en': 'Bliss Coach is always here for you',
      'pt': '',
    },
    '2ttaot0y': {
      'en': 'Built with Love',
      'pt': '',
    },
    '5ev27wyt': {
      'en': 'Every detail thoughtfully designed for women',
      'pt': '',
    },
    'yuuij5mu': {
      'en':
          'Every woman deserves to understand her body and feel supported through every stage of life.',
      'pt': '',
    },
    'wudcx1tc': {
      'en': 'Chat with Bliss Coach',
      'pt': '',
    },
  },
  // DailyReminderPage
  {
    'i1re7msc': {
      'en': 'Daily Reminder',
      'pt': '',
    },
    'ntz6ghye': {
      'en': 'Enable Reminders',
      'pt': '',
    },
    'v843fvan': {
      'en': 'Get gentle daily check-in nudges 💛',
      'pt': '',
    },
    '5ie0aq9s': {
      'en': 'Reminder Time',
      'pt': '',
    },
    '9x4fcl9g': {
      'en': '09:00 AM',
      'pt': '',
    },
    'clw95izu': {
      'en': 'Tap to change time',
      'pt': '',
    },
    'jxbos6ld': {
      'en': 'Frequency',
      'pt': '',
    },
    'h15zd2ur': {
      'en': 'Daily',
      'pt': '',
    },
    'ybn1iede': {
      'en': 'Weekdays',
      'pt': '',
    },
    '1d10szx1': {
      'en': 'Custom',
      'pt': '',
    },
    'odto25xx': {
      'en': 'Select days',
      'pt': '',
    },
    'yct6342m': {
      'en': 'S',
      'pt': '',
    },
    'g4b8mxeq': {
      'en': 'M',
      'pt': '',
    },
    'mzdni6il': {
      'en': 'T',
      'pt': '',
    },
    '4ysbwmrl': {
      'en': 'W',
      'pt': '',
    },
    'u4f75xck': {
      'en': 'T',
      'pt': '',
    },
    'w2wzhrw2': {
      'en': 'F',
      'pt': '',
    },
    'w96bg6rr': {
      'en': 'S',
      'pt': '',
    },
    'hcvl43ar': {
      'en': 'Reminder Message',
      'pt': '',
    },
    'i9is6jeo': {
      'en': 'Write your reminder message...',
      'pt': '',
    },
    '7ms3sve8': {
      'en': 'Quick suggestions:',
      'pt': '',
    },
    'adtrwkux': {
      'en': 'Time to check in with your body 💛',
      'pt': '',
    },
    't25p6uzr': {
      'en': 'How are you feeling today? 🌸',
      'pt': '',
    },
    'dwi6q2fl': {
      'en': 'Your daily wellness moment awaits ✨',
      'pt': '',
    },
    'y0inm0a9': {
      'en': 'Notification Preview',
      'pt': '',
    },
    'cxk3687e': {
      'en': 'Bliss Menopause',
      'pt': '',
    },
    'af4o97h3': {
      'en': 'Time to check in with your body 💛',
      'pt': '',
    },
    '5dwq99g9': {
      'en': '09:00 AM · Daily',
      'pt': '',
    },
    '9f8kv22a': {
      'en': 'Save Reminder',
      'pt': '',
    },
  },
  // WeeklyInsightPage
  {
    '9cwecig1': {
      'en': 'Weekly Insight',
      'pt': '',
    },
    'jtw8gi7b': {
      'en': 'This Week\'s Summary',
      'pt': '',
    },
    'enf4zn5i': {
      'en': 'Days logged',
      'pt': '',
    },
    '7yprkv9q': {
      'en': 'Symptoms tracked',
      'pt': '',
    },
    'q9iya7uk': {
      'en': 'vs last week',
      'pt': '',
    },
    '2m9vvgpx': {
      'en': 'Symptom Highlights',
      'pt': '',
    },
    'ss0ygd99': {
      'en': 'Hot Flashes',
      'pt': '',
    },
    'dwyutyhv': {
      'en': 'Night Sweats',
      'pt': '',
    },
    'u06fsyxn': {
      'en': 'Fatigue',
      'pt': '',
    },
    'uxgjmslh': {
      'en': 'Your Trends',
      'pt': '',
    },
    'kvzp68ob': {
      'en': 'Hot Flashes',
      'pt': '',
    },
    '416y0blh': {
      'en': 'Night Sweats',
      'pt': '',
    },
    '1t19rno0': {
      'en': 'Fatigue',
      'pt': '',
    },
    '4dcg9yry': {
      'en': 'Bliss Insight',
      'pt': '',
    },
    '5w6thny8': {
      'en': 'Recommended for You',
      'pt': '',
    },
    'jycmfb3z': {
      'en': 'Try Evening Meditation',
      'pt': '',
    },
    '0tu01nbt': {
      'en': 'Reduces night sweat frequency by up to 30%',
      'pt': '',
    },
    'bxe2uvz7': {
      'en': 'Anti-Inflammatory Diet Tips',
      'pt': '',
    },
    '4ndwb2wk': {
      'en': 'Certain foods can help ease hot flash intensity',
      'pt': '',
    },
  },
  // CommunityForumPage
  {
    'tvhfy4qq': {
      'en': 'Community',
      'pt': '',
    },
    'u2sm386z': {
      'en': 'Bliss Community 💛',
      'pt': '',
    },
    'yxv60mmp': {
      'en': 'You are not alone in this journey',
      'pt': '',
    },
    'p2mlfbyo': {
      'en': 'Members',
      'pt': '',
    },
    'p0zhomrv': {
      'en': 'Online now',
      'pt': '',
    },
    'enxa6678': {
      'en': 'Posts today',
      'pt': '',
    },
    'bhdaa857': {
      'en': 'Topics',
      'pt': '',
    },
    '7bqoknwi': {
      'en': 'All',
      'pt': '',
    },
    'n2sfxgdq': {
      'en': 'Hot Flashes',
      'pt': '',
    },
    'uci0ijl2': {
      'en': 'Sleep',
      'pt': '',
    },
    'oauisgud': {
      'en': 'Nutrition',
      'pt': '',
    },
    '3xq8plx2': {
      'en': 'Mental Health',
      'pt': '',
    },
    'ziwfal1d': {
      'en': 'Recent Posts',
      'pt': '',
    },
    'ay3zvf4z': {
      'en': 'Share your experience',
      'pt': '',
    },
    'cb46i2gb': {
      'en': 'Your story can help someone today 💛',
      'pt': '',
    },
    'ni6459f1': {
      'en': 'Community',
      'pt': '',
    },
  },
  // MyStreakPage
  {
    'vg1vtsdi': {
      'en': 'My Streak',
      'pt': '',
    },
    'zx7e8042': {
      'en': 'CURRENT STREAK',
      'pt': '',
    },
    'gy2zt4n5': {
      'en': 'days',
      'pt': '',
    },
    '5nhh31tf': {
      'en': '🔥 Log today to keep streak!',
      'pt': '',
    },
    'zi8grqf3': {
      'en': 'Milestones',
      'pt': '',
    },
    'hfo3gz73': {
      'en': 'Daily Motivation',
      'pt': '',
    },
    'n6yacg17': {
      'en': 'Log Today\'s Symptoms ',
      'pt': '',
    },
  },
  // SymptomDetailPage
  {
    '76fav2s9': {
      'en': 'Hot Flashes',
      'pt': '',
    },
    'osffjhhq': {
      'en': 'Last logged today',
      'pt': '',
    },
    'tck6tvpc': {
      'en': 'What is this?',
      'pt': '',
    },
    '6vdnxxeq': {
      'en':
          'Hot flashes are sudden feelings of warmth caused by declining estrogen affecting your body\'s temperature regulation.',
      'pt': '',
    },
    'fz0817zv': {
      'en':
          'Most common between 6–8am and after meals. Try cooling breathwork.',
      'pt': '',
    },
    '7j7czyt3': {
      'en': 'This Week',
      'pt': '',
    },
    'xka22zg6': {
      'en': 'Recent Logs',
      'pt': '',
    },
    'ccb3blem': {
      'en': 'Symptom Detail',
      'pt': '',
    },
  },
  // SubscriptionWinBackPag
  {
    '3txz21d8': {
      'en': 'Before You Go',
      'pt': '',
    },
    'g4lspwj7': {
      'en': 'We\'d hate to see you go 💛',
      'pt': '',
    },
    'ehfuzheh': {
      'en': 'Day Streak',
      'pt': '',
    },
    'uo8t2fbb': {
      'en': 'Log made',
      'pt': '',
    },
    '112otrgv': {
      'en': 'Insights',
      'pt': '',
    },
    '6sm2kwhe': {
      'en': 'Special offers just for you',
      'pt': '',
    },
    '414ushfd': {
      'en':
          'Your data and progress will be saved if you decide to come back later.',
      'pt': '',
    },
  },
  // PersonalizedRecommendationsPag
  {
    'ob2ctk44': {
      'en': 'Based on your symptoms this week',
      'pt': '',
    },
    'f1mhasax': {
      'en': 'Top Picks For You',
      'pt': '',
    },
    '10ae5kdt': {
      'en': 'Recommended Reading',
      'pt': '',
    },
    'rm5pn1j3': {
      'en': 'See all',
      'pt': '',
    },
    'r758bv9j': {
      'en': 'Bliss Insight',
      'pt': '',
    },
    'lb78d8bt': {
      'en':
          'Your recommendations update every week based on your symptom logs. The more you track, the more personalized your plan becomes. 💛',
      'pt': '',
    },
    'a06ij0hh': {
      'en': 'For You',
      'pt': '',
    },
  },
  // CreatePostPage
  {
    'on5f1g13': {
      'en': 'New Post',
      'pt': '',
    },
    '9or76rzq': {
      'en': 'Category',
      'pt': '',
    },
    'lda44rl6': {
      'en': 'Your Post',
      'pt': '',
    },
    'xek2wmok': {
      'en': 'Share your experience, ask a question, or offer support...',
      'pt': '',
    },
    '2nesb3rc': {
      'en': 'Share with Community',
      'pt': '',
    },
  },
  // AllreadingsPage
  {
    'br5ofx97': {
      'en': 'Reading Library',
      'pt': '',
    },
    'uh7twpo5': {
      'en': 'Search articles...',
      'pt': '',
    },
    'k7l8x09w': {
      'en': 'Search articles...',
      'pt': '',
    },
  },
  // PrivacySecurity
  {
    'g5o289lr': {
      'en': 'Privacy & Security',
      'pt': '',
    },
    'ty1yscyr': {
      'en': 'ACCOUNT SECURITY',
      'pt': '',
    },
    '8c0ecmxq': {
      'en': 'PRIVACY CONTROLS',
      'pt': '',
    },
    '7nkud72e': {
      'en': 'LEGAL',
      'pt': '',
    },
    'ge84qcgi': {
      'en': 'Save Changes',
      'pt': '',
    },
  },
  // AppearancePage
  {
    'mk3bhzyp': {
      'en': 'Appearance',
      'pt': '',
    },
    'pswng8vy': {
      'en': 'Font Size',
      'pt': '',
    },
    'utacga2f': {
      'en': 'Accent Color',
      'pt': '',
    },
  },
  // HelpCenterPage
  {
    '34bamviu': {
      'en': 'Help Center',
      'pt': '',
    },
    'n4f3vsqx': {
      'en': 'Search for help...',
      'pt': '',
    },
    'jb625084': {
      'en': 'GETTING STARTED',
      'pt': '',
    },
    'ykezhzau': {
      'en': 'ACCOUNT & BILLING',
      'pt': '',
    },
    's1ct85jb': {
      'en': 'CONTACT US',
      'pt': '',
    },
    's8ep579f': {
      'en': 'FREQUENTLY ASKED',
      'pt': '',
    },
  },
  // ProfileVisibilityPage
  {
    'z4ifm1od': {
      'en': 'Profile Visibility',
      'pt': '',
    },
    'fnlaqko5': {
      'en': 'Control what other Bliss community members\ncan see about you.',
      'pt': '',
    },
    'yo5dpmhm': {
      'en': 'VISIBILITY SETTINGS',
      'pt': '',
    },
    'udd79rg5': {
      'en':
          'Your health data is always private.\nThese settings only affect your community profile.',
      'pt': '',
    },
    'chmqe84v': {
      'en': 'Save Changes',
      'pt': '',
    },
  },
  // ChangePassword
  {
    'zz66tr13': {
      'en': 'Change Password',
      'pt': '',
    },
    '9gwchohs': {
      'en': 'Update your password to keep your account secure.',
      'pt': '',
    },
    'zp1z6vzz': {
      'en': 'PASSWORD DETAILS',
      'pt': '',
    },
    'eu1xy1q0': {
      'en': 'Current Password',
      'pt': '',
    },
    'a1guwv1h': {
      'en': 'Enter current password',
      'pt': '',
    },
    '3xmvv4p8': {
      'en': 'New Password',
      'pt': '',
    },
    'thxs8a0s': {
      'en': 'Enter new password',
      'pt': '',
    },
    'lur5zau3': {
      'en': 'Confirm new Password',
      'pt': '',
    },
    '74vgzhhu': {
      'en': 'Confirm new password',
      'pt': '',
    },
    'hsrcs9pq': {
      'en':
          'Password must be at least 8 characters and include uppercase, lowercase and numbers.',
      'pt': '',
    },
    'lukcexc5': {
      'en': 'Update Password',
      'pt': '',
    },
  },
  // TwoFactorAuthentication
  {
    'k2a3f8z5': {
      'en': 'Two-Factor Authentication',
      'pt': '',
    },
    '3jc6cebq': {
      'en': 'Add an extra layer of security to your Bliss account.',
      'pt': '',
    },
    'vqbyj76g': {
      'en': 'SECURITY SETTINGS',
      'pt': '',
    },
    '59qjark4': {
      'en': 'Enable Two-Factor Authentication',
      'pt': '',
    },
    'a8eptde8': {
      'en': 'Secure your account with 2FA',
      'pt': '',
    },
    'wvlcmrtr': {
      'en': 'Save Settings',
      'pt': '',
    },
  },
  // ReportPage
  {
    'p4mrr103': {
      'en': 'Monthly Report',
      'pt': '',
    },
    'go1c2lg9': {
      'en': 'November 2025',
      'pt': '',
    },
    '0ui2ugwd': {
      'en': '4-Week Overview',
      'pt': '',
    },
    'g09c6kqi': {
      'en': 'Symptom Evolution',
      'pt': '',
    },
    'hja6mofc': {
      'en': 'Hot Flashes intensity over 4 weeks',
      'pt': '',
    },
    'hhi0ympk': {
      'en': 'Month Comparison',
      'pt': '',
    },
    'baasyovh': {
      'en': 'Download Report',
      'pt': '',
    },
    'shxu41ey': {
      'en': 'Monthly Report',
      'pt': '',
    },
  },
  // LastWeekPage
  {
    'l2byuglt': {
      'en': 'Last Week',
      'pt': '',
    },
    'yepoje3a': {
      'en': 'Last Week\'s Summary',
      'pt': '',
    },
    's7u5poqx': {
      'en': 'May 12 - May 18',
      'pt': '',
    },
    '74t4gz66': {
      'en': '6',
      'pt': '',
    },
    'kzs87of8': {
      'en': 'Days logged',
      'pt': '',
    },
    'x7cc6pv0': {
      'en': '14',
      'pt': '',
    },
    'f3gfi1f9': {
      'en': 'Symptoms tracked',
      'pt': '',
    },
    'l3uy57pe': {
      'en': '+12%',
      'pt': '',
    },
    '761dfoov': {
      'en': 'vs prev week',
      'pt': '',
    },
    'fm7m375f': {
      'en': 'Symptom Highlights',
      'pt': '',
    },
    'i3tjwcue': {
      'en': 'Hot Flashes',
      'pt': '',
    },
    'irfbzv4r': {
      'en': 'Most frequent in evening',
      'pt': '',
    },
    'bqjp1c30': {
      'en': 'High',
      'pt': '',
    },
    'co9revvr': {
      'en': 'Last Week Trends',
      'pt': '',
    },
    'oo1pvcxe': {
      'en': 'Bliss Insight',
      'pt': '',
    },
    '1fl0f3tl': {
      'en':
          'Your data shows hot flashes are 30% more frequent on days with caffeine. Consider swapping your afternoon coffee for herbal tea to improve sleep quality.',
      'pt': '',
    },
  },
  // SeveritySlider
  {
    'u0967vhs': {
      'en': 'Mild',
      'pt': '',
    },
    '43v3hl8l': {
      'en': 'Severe',
      'pt': '',
    },
  },
  // CoachMessage
  {
    'a9v41da8': {
      'en': 'B',
      'pt': '',
    },
  },
  // SymptomLogItem
  {
    '7y2eygwf': {
      'en': 'Severity',
      'pt': '',
    },
  },
  // ReadingCard
  {
    'pauokvi1': {
      'en': '5 min read',
      'pt': '',
    },
  },
  // UpdateHormonalProfile
  {
    'fewf4czj': {
      'en': 'Update Hormonal Profile',
      'pt': '',
    },
    'yni8ecr9': {
      'en': 'Estrogen Level',
      'pt': '',
    },
    'rtoec9f3': {
      'en': 'Progesterone Level',
      'pt': '',
    },
    '54i93ac0': {
      'en': 'FSH Level',
      'pt': '',
    },
    'dgzeub4x': {
      'en': 'Select...',
      'pt': '',
    },
    'cgba2g5r': {
      'en': 'Search...',
      'pt': '',
    },
    'znwurthe': {
      'en': 'Perimenopause',
      'pt': '',
    },
    'ys8p8di5': {
      'en': 'Menopause',
      'pt': '',
    },
    '3ze8aoxj': {
      'en': 'Post-Menopause',
      'pt': '',
    },
    '3awz3h7v': {
      'en': 'Save Changes',
      'pt': '',
    },
  },
  // ChatMessageBubble
  {
    'y87zel8p': {
      'en': 'B',
      'pt': '',
    },
  },
  // ChatMessageBubble2
  {
    '5czi39x2': {
      'en': 'B',
      'pt': '',
    },
  },
  // ChatMessageBubble3
  {
    'wifxocrx': {
      'en': 'B',
      'pt': '',
    },
  },
  // SecurityItem
  {
    '0tki2cgv': {
      'en': 'Active',
      'pt': '',
    },
  },
  // HelpItem
  {
    '3vdx4d3o': {
      'en': 'Online',
      'pt': '',
    },
  },
  // ProfileCardChild2
  {
    '66gn39cz': {
      'en': 'Menopause Phase',
      'pt': '',
    },
    'qo9m0034': {
      'en': 'Perimenopause',
      'pt': '',
    },
    'tekh7wy8': {
      'en': 'Perimenopause',
      'pt': '',
    },
    'hvp7829n': {
      'en': 'Perimenopause',
      'pt': '',
    },
    'zl0eusa4': {
      'en': 'Menopause',
      'pt': '',
    },
    '2rmqns4b': {
      'en': 'Post-Menopause',
      'pt': '',
    },
  },
  // ProfileCardChild3
  {
    'h44oh8e4': {
      'en': 'Email Notifications',
      'pt': '',
    },
    'wze3dtah': {
      'en': 'Push Notifications',
      'pt': '',
    },
  },
  // Miscellaneous
  {
    'dyyilp46': {
      'en': '',
      'pt': '',
    },
    'x6td4f9j': {
      'en': '',
      'pt': '',
    },
    'x6vb7mfb': {
      'en': '',
      'pt': '',
    },
    '5d31nhnr': {
      'en': '',
      'pt': '',
    },
    'e4unwqab': {
      'en': '',
      'pt': '',
    },
    'nusuap1j': {
      'en': '',
      'pt': '',
    },
    '1a5h59vo': {
      'en': '',
      'pt': '',
    },
    'l1ecwo3c': {
      'en': '',
      'pt': '',
    },
    'kylcni64': {
      'en': '',
      'pt': '',
    },
    '3tdh4zbf': {
      'en': '',
      'pt': '',
    },
    'ct7apwbx': {
      'en': '',
      'pt': '',
    },
    'egpdsfpc': {
      'en': '',
      'pt': '',
    },
    '9jsoybbv': {
      'en': '',
      'pt': '',
    },
    'jz63n8zp': {
      'en': '',
      'pt': '',
    },
    '7xyxgj4p': {
      'en': '',
      'pt': '',
    },
    'h8ali498': {
      'en': '',
      'pt': '',
    },
    '0f2h737d': {
      'en': '',
      'pt': '',
    },
    '744wmwc0': {
      'en': '',
      'pt': '',
    },
    '3tx4bv0f': {
      'en': '',
      'pt': '',
    },
    '22at50c5': {
      'en': '',
      'pt': '',
    },
    '4n52gmgy': {
      'en': '',
      'pt': '',
    },
    'egn91roa': {
      'en': '',
      'pt': '',
    },
    '52k4ebh3': {
      'en': '',
      'pt': '',
    },
    '5gh7w79b': {
      'en': '',
      'pt': '',
    },
    'pz38pwx9': {
      'en': '',
      'pt': '',
    },
  },
].reduce((a, b) => a..addAll(b));
