import 'package:dio/dio.dart';
import 'package:pokemon_card/model/card.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {required String baseUrl}) {
    return _RestClient(dio, baseUrl: baseUrl);
  }

  @POST('/v2/cards')
  Future<PokemonCard> doGetCards({@Query('q') String? query, @Query('page') required int page, @Query('pageSize') required int pageSize});
}
