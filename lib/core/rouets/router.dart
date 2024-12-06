import 'package:daweny/feature/login/login.dart';
import 'package:daweny/feature/onboarding/onboarding_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
 
  GoRoute(
    path: '/',
    builder: (context, state) => const OnboardingPage(),
  ),
  GoRoute(
    path: '/Login',
    builder: (context, state) => const Login(),
  )]);