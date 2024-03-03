import 'package:go_router/go_router.dart';

import 'package:jobhub/views/ui/ui.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [

    GoRoute(
      path: '/',
      builder: (context, state) => const OnboardingScreen(),
    ),

    GoRoute(
      path: '/auth/login',
      builder: (context, state) => const LoginScreen(),
    ),

    GoRoute(
      path: '/auth/signup',
      builder: (context, state) => const SignupScreen(),
    ),

    GoRoute(
      path: '/home',
      builder: (context, state) => const MainScreen(),
    ),

  ]
);
