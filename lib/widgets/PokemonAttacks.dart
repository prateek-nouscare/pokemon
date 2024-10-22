import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gretisapp/models/PokemonListResponse.dart';

class PokemonAttacks extends StatelessWidget {
  final List<Attacks>? attacks;

  const PokemonAttacks({Key? key, this.attacks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (attacks == null || attacks!.isEmpty) return SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Attacks:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        )
            .animate()
            .fadeIn(duration: 600.ms)
            .then(delay: 100.ms)
            .slide(),
        ...attacks!.map(
              (attack) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${attack.name} (Cost: ${attack.cost?.join(', ') ?? 'N/A'})'),
              Text('Damage: ${attack.damage ?? 'N/A'}'),
              Text(attack.text ?? 'N/A'),
              SizedBox(height: 8),
            ],
          )
              .animate()
              .fadeIn(duration: 600.ms)
              .then(delay: 100.ms)
              .slide(),
        ),
      ],
    );
  }
}
