import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:matromonial_app/pages/email_page.dart';
import 'package:matromonial_app/pages/income_page.dart';
import 'package:matromonial_app/pages/location_page.dart';
import 'package:matromonial_app/pages/login_page.dart';
import 'package:matromonial_app/pages/main_login.dart';
import 'package:matromonial_app/pages/martial_page.dart';
import 'package:matromonial_app/pages/name_page.dart';
import 'package:matromonial_app/pages/profile_page.dart';
import 'package:matromonial_app/pages/qualification_page.dart';
import 'package:matromonial_app/pages/religion_page.dart';
import '../splash screen/splash_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String loading = '/load';
  static const String login = '/login';
  static const String profile = '/profile';
  static const String profile2 = '/profile2';
  static const String religion = '/religion';
  static const String email = '/email';
  static const String location = '/location';
  static const String martial = '/martial';
  static const String qualification = '/qualification';
  static const String income = '/income';

  static final List<GetPage> routes = [
    GetPage(
      name: splash,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: loading,
      page: () => const LoadingPage(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: login,
      page: () => const LoginPage(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: profile,
      page: () => const ProfilePage(),
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: profile2,
      page: () => const NamePage(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: religion,
      page: () => const ReligionPage(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: email,
      page: () => const EmailPage(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: location,
      page: () => const LocationPage(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: martial,
      page: () => const MartialPage(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: qualification,
      page: () => const QualificationPage(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: income,
      page: () => const IncomePage(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 400),
    ),
  ];
}
