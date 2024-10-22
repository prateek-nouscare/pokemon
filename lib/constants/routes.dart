import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:gretisapp/models/PokemonListResponse.dart';

import '../PokemonDetailsScreen.dart';
import '../PokemonGridScreen.dart';
import '../main.dart';

const home = '/home';
const register = '/register';
final routerConfig = GoRouter(
  initialLocation: "/",
  observers: [],
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => PokemonGridScreen(),
    ),
    GoRoute(
      path: '/pokemon/:name',
      pageBuilder: (context, state) => fadeTransition(
        context,
        state,
        PokemonDetails(pokemon: state.extra as DataPokemon),
      ),

    ),
  ],
);
Page<dynamic> fadeTransition(BuildContext context, GoRouterState state, Widget child) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const curve = Curves.easeInOut;

      var fadeAnimation = animation.drive(CurveTween(curve: curve));

      return FadeTransition(
        opacity: fadeAnimation,
        child: child,
      );
    },
  );
}
