import 'package:alice/alice.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pokemon_card/core/constants/url.dart';
import 'package:pokemon_card/core/repositories/rest_client.dart';
import 'package:pokemon_card/viewmodel/bloc/cards/cards_bloc.dart';
import 'package:pokemon_card/viewmodel/cards_viewmodel.dart';

final sl = GetIt.I;

Future<void> initSL() async {
  final dio = Dio(BaseOptions(baseUrl: baseUrl, contentType: 'application/json'));

  Alice alice = Alice(showNotification: true, showInspectorOnShake: true);
  dio.interceptors.add(alice.getDioInterceptor());
  sl.registerSingleton<Alice>(alice);

  sl.registerSingleton<Dio>(dio);

  sl.registerLazySingleton<RestClient>(() => RestClient(sl(), baseUrl: baseUrl));

  sl.registerLazySingleton<CardsBloc>(() => CardsBloc(sl()));

  sl.registerLazySingleton<CardsViewmodel>(() => CardsViewmodel(sl()));
}
