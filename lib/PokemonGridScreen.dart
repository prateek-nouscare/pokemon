import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:go_router/go_router.dart';
import 'package:gretisapp/widgets/Pokemoncard.dart';

import 'controllers/PokemonController.dart';
import 'main.dart';

class PokemonGridScreen extends StatefulWidget {
  @override
  _PokemonGridScreenState createState() => _PokemonGridScreenState();
}

class _PokemonGridScreenState extends State<PokemonGridScreen> {
  final PokemonController pokemonController = Get.find<PokemonController>();
  final ScrollController _scrollController = ScrollController();
  String searchQuery = ''; // To store the current search query

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        pokemonController.loadMore();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        title: Text('Pokémon Cards'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60), // Adjust the height of the search bar
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Pokémon...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),

                filled: true,
              ),
              onChanged: (value) {
                setState(() {
                  searchQuery = value.toLowerCase(); // Update the search query
                });
              },
            ),
          ),
        ),
      ),
      body: Obx(() {
        if (pokemonController.isLoading.value && pokemonController.pokemonList.isEmpty) {
          return Center(child: CircularProgressIndicator());
        } else if (pokemonController.pokemonList.isEmpty) {
          return Center(child: Text('No Pokémon cards available.'));
        } else {
          // Filter the list based on the search query
          var filteredList = pokemonController.pokemonList.where((pokemon) {
            return pokemon.name!.toLowerCase().contains(searchQuery);
          }).toList();

          return Column(
            children: [
              Expanded(
                child: GridView.builder(
                  controller: _scrollController,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 2 / 3,
                  ),
                  padding: EdgeInsets.all(10),
                  itemCount: filteredList.length,
                  itemBuilder: (context, index) {
                    final pokemon = filteredList[index];
                    return
                       GestureDetector(
                        child: PokemonCard(pokemon: pokemon),
                        onTap:(){
                          context.push(
                              '/pokemon/${pokemon.name}', // Pass Pokémon name in the route
                              extra: pokemon);
                        },
                      );




                  },
                ),
              ),
              if (pokemonController.isLoading.value)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircularProgressIndicator(),
                ),
            ],
          );
        }
      }),
    );
  }
}
