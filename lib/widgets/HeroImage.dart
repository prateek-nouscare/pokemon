import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/PokemonListResponse.dart';

class HeroImage extends StatelessWidget {
  final DataPokemon pokemon;

  const HeroImage({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: pokemon.id.toString(),
      child: CachedNetworkImage(
        imageUrl: pokemon.images!.large.toString(),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );
  }
}
