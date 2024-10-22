import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';

class PokemonInfoText extends StatelessWidget {
  final String title;
  final String content;

  const PokemonInfoText({Key? key, required this.title, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$title: $content',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        )
            .animate()
            .fadeIn(duration: 600.ms)
            .then(delay: 100.ms)
            .slide(),
        SizedBox(height: 8),
      ],
    );
  }
}
