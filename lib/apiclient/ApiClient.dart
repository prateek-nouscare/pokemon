import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/PokemonListResponse.dart';

part 'ApiClient.g.dart';


@RestApi(baseUrl: "https://api.pokemontcg.io/v2/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/cards")
  Future<PokemonListResponse> getPokemonCards(
      @Query("page") int page, @Query("pageSize") int pageSize);
}
