import 'package:alice/alice.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pokemon_card/core/constants/url.dart';
import 'package:pokemon_card/core/helpers/pokemon_type_helper.dart';
import 'package:pokemon_card/core/repositories/rest_client.dart';
import 'package:pokemon_card/core/routes/app_router.dart';
import 'package:pokemon_card/core/widgets/container/connection_viewmodel.dart';
import 'package:pokemon_card/viewmodel/bloc/cards/cards_bloc.dart';
import 'package:pokemon_card/viewmodel/bloc/detail_card/detail_card_bloc.dart';
import 'package:pokemon_card/viewmodel/cards_viewmodel.dart';

final sl = GetIt.I;

Future<void> initSL() async {
  sl.registerSingleton<AppRouter>(AppRouter());

  final dio = Dio(BaseOptions(baseUrl: baseUrl, contentType: 'application/json'));

  Alice alice = Alice(showNotification: true, showInspectorOnShake: true);
  dio.interceptors.add(alice.getDioInterceptor());
  sl.registerSingleton<Alice>(alice);

  sl.registerSingleton<Dio>(dio);

  sl.registerLazySingleton<RestClient>(() => RestClient(sl(), baseUrl: baseUrl));

  sl.registerLazySingleton(() => PokemonTypeHelper());

  sl.registerLazySingleton<CardsBloc>(() => CardsBloc(sl()));
  sl.registerLazySingleton<DetailCardBloc>(() => DetailCardBloc(sl()));

  sl.registerLazySingleton<CardsViewmodel>(() => CardsViewmodel(sl(), sl()));
  sl.registerLazySingleton<ConnectionViewmodel>(() => ConnectionViewmodel());
}
