import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../models/PokemonListResponse.dart';

class PokemonSetInfo extends StatelessWidget {
  final DataPokemon pokemon;

  const PokemonSetInfo({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Set:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        )
            .animate()
            .fadeIn(duration: 600.ms)
            .then(delay: 100.ms)
            .slide(),
        Text('${pokemon.set?.name ?? 'N/A'} \nSeries: ${pokemon.set?.series ?? 'N/A'}'),
        Text('Printed Total: ${pokemon.set?.printedTotal?.toString() ?? 'N/A'}'),
        Text('Total: ${pokemon.set?.total?.toString() ?? 'N/A'}'),
        SizedBox(height: 8),
      ],
    );
  }
}
