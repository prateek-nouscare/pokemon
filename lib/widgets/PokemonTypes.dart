import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';

class PokemonTypes extends StatelessWidget {
  final List<String>? types;

  const PokemonTypes({Key? key, this.types}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (types == null || types!.isEmpty) return SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Types:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        )
            .animate()
            .fadeIn(duration: 600.ms)
            .then(delay: 100.ms)
            .slide(),
        ...types!.map((type) => Text(type)).toList(),
        SizedBox(height: 8),
      ],
    );
  }
}
