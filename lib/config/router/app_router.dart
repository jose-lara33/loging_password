import 'package:go_router/go_router.dart';
import 'package:validacionusuarios/presentation/screens/lobby/lobby_screen.dart';

import 'package:validacionusuarios/presentation/screens/login/login_screen.dart';



final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/lobby',
      builder: (context, state) {
        final extra = state.extra as Map<String, String>?;
        final username = extra?['username'] ?? '';
        final password = extra?['password'] ?? '';

        return LobbyScreen(username: username, password: password);
      },
    ),
   
  ],
);
