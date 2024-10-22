import 'dart:convert';
import 'package:get/get.dart';
import '../apiclient/ApiClient.dart';
import '../models/PokemonListResponse.dart';


class PokemonController extends GetxController {
  var isLoading = false.obs;
  var pokemonList = <DataPokemon>[].obs;
  var currentPage = 1;
  final pageSize = 10;
  var hasMoreData = true.obs;

  final ApiClient apiClient;

  // Constructor with the injected ApiClient
  PokemonController({required this.apiClient});

  @override
  void onInit() {
    super.onInit();
    fetchPokemonCards();
  }

  Future<void> fetchPokemonCards() async {
    if (isLoading.value || !hasMoreData.value) return;

    isLoading.value = true;

    try {
      final newCards = await apiClient.getPokemonCards(currentPage, pageSize);

      if (newCards.data != null && newCards.data!.isNotEmpty) {
        pokemonList.addAll(newCards.data!);
        currentPage++;
      } else {
        hasMoreData.value = false; // No more data available
      }
    } catch (e) {
      print('Error fetching data: $e');
    } finally {
      isLoading.value = false;
    }
  }

  void loadMore() {
    fetchPokemonCards();
  }
}
