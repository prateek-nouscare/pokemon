import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:gretisapp/widgets/HeroImage.dart';
import 'package:gretisapp/widgets/PokemonAttacks.dart';
import 'package:gretisapp/widgets/PokemonInfoText.dart';
import 'package:gretisapp/widgets/PokemonResistances.dart';
import 'package:gretisapp/widgets/PokemonSetInfo.dart';
import 'package:gretisapp/widgets/PokemonTypes.dart';
import 'package:gretisapp/widgets/PokemonWeaknesses.dart';
import '../models/PokemonListResponse.dart';

class PokemonDetails extends StatelessWidget {
  final DataPokemon pokemon;

  const PokemonDetails({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name!.toString()),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            GoRouter.of(context).pop(); // Go back to the previous screen
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeroImage(pokemon: pokemon),
              SizedBox(height: 16),
              PokemonInfoText(title: 'ID', content: pokemon.id ?? 'N/A'),
              PokemonInfoText(title: 'HP', content: pokemon.hp ?? 'N/A'),
              PokemonInfoText(title: 'Types', content: pokemon.types?.join(', ') ?? 'N/A'),
              if (pokemon.evolvesFrom != null)
                PokemonInfoText(title: 'Evolves From', content: pokemon.evolvesFrom ?? 'N/A'),
              SizedBox(height: 16),
              PokemonAttacks(attacks: pokemon.attacks),
              PokemonSetInfo(pokemon: pokemon),
              PokemonTypes(types: pokemon.types),
              PokemonWeaknesses(weaknesses: pokemon.weaknesses),
              PokemonResistances(resistances: pokemon.resistances),
            ],
          ),
        ),
      ),
    );
  }
}
