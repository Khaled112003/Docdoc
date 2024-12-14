import 'package:daweny/core/di/depencey_injection.dart';
import 'package:daweny/feature/home/home_screen.dart';
import 'package:daweny/feature/login/logic/cubit/login_cubit.dart';
import 'package:daweny/feature/login/login.dart';
import 'package:daweny/feature/onboarding/onboarding_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
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
    path: '/home',
    builder: (context, state) => const HomeScreen(),
  ),
]);
