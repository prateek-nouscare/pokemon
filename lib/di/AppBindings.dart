import 'package:get/get.dart';
import 'package:dio/dio.dart';

import '../apiclient/ApiClient.dart';
import '../controllers/PokemonController.dart';


class AppBindings extends Bindings {
  @override
  void dependencies() {
    // Initialize Dio
    Dio dio = Dio();

    // Inject ApiClient using Dio
    Get.lazyPut<ApiClient>(() => ApiClient(dio));

    // Inject PokemonController
    Get.lazyPut<PokemonController>(() => PokemonController(apiClient: Get.find()));
  }
}
