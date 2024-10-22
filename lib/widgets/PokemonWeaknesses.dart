import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gretisapp/models/PokemonListResponse.dart';

class PokemonWeaknesses extends StatelessWidget {
  final List<Weaknesses>? weaknesses;

  const PokemonWeaknesses({Key? key, this.weaknesses}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (weaknesses == null || weaknesses!.isEmpty) return SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Weaknesses:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        )
            .animate()
            .fadeIn(duration: 600.ms)
            .then(delay: 100.ms)
            .slide(),
        ...weaknesses!.map((weakness) => Text('${weakness.type}: ${weakness.value}')).toList(),
        SizedBox(height: 8),
      ],
    );
  }
}
