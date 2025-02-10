import 'package:daweny/core/di/depencey_injection.dart';
import 'package:daweny/feature/home/home_screen.dart';
import 'package:daweny/feature/home/logic/cubit/home_cubit.dart';
import 'package:daweny/feature/login/logic/cubit/login_cubit.dart';
import 'package:daweny/feature/login/login.dart';
import 'package:daweny/feature/onboarding/onboarding_page.dart';
import 'package:daweny/feature/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:daweny/feature/sign_up/ui/sign_up.dart';
import 'package:daweny/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/ef',
    builder: (context, state) => const OnboardingPage(),
  ),
  GoRoute(
    path: '/Login',
    builder: (context, state) => BlocProvider(
      create: (context) => getIt<LoginCubit>(),
      child: const Login(),
    ),
  ),
  GoRoute(
    path: '/',
    builder: (context, state) => BlocProvider(
      create: (context) => getIt<HomeCubit>().. getSpecialties(),
      child:  isLogedInUser ? const HomeScreen() : const OnboardingPage(),
    ),
  ),
  GoRoute(
    path: '/signup',
    builder: (context, state) => BlocProvider(
      create: (context) => getIt<SignUpCubit>(),
      child: const SignUp(),
    ),
  ),
]);
