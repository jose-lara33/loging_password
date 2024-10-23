import 'package:go_router/go_router.dart';
import 'package:validacionusuarios/presentation/screens/lobby/lobby_screen.dart';

import 'package:validacionusuarios/presentation/screens/login/login_screen.dart';



final appRouter = GoRouter(initialLocation: '/', routes: <RouteBase>[
  
  GoRoute(
    path: '/',
    name: LoginScreen.name,
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
      path: '/lobby', // Ruta para la pantalla del lobby.
      name: 'lobby',
      builder: (context, state) => const LobbyScreen(), 
    ),

  
  // GoRoute(
  // path: '/cards',
  //  name: CardsScreen.name,
  //builder: (context, state) => const CardsScreen(),
  // ),
]);
