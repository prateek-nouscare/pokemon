import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gretisapp/models/PokemonListResponse.dart';

class PokemonResistances extends StatelessWidget {
  final List<Resistances>? resistances;

  const PokemonResistances({Key? key, this.resistances}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (resistances == null || resistances!.isEmpty) return SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Resistances:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        )
            .animate()
            .fadeIn(duration: 600.ms)
            .then(delay: 100.ms)
            .slide(),
        ...resistances!.map((resistance) => Text('${resistance.type}: ${resistance.value}')).toList(),
      ],
    );
  }
}
