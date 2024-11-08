import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_card/core/repositories/rest_client.dart';
import 'package:pokemon_card/model/pokemon_card_response.dart';

part 'cards_event.dart';
part 'cards_state.dart';

class CardsBloc extends Bloc<CardsEvent, CardsState> {
  final RestClient _restClient;
  CardsBloc(this._restClient) : super(CardsInitial()) {
    on<FetchCardsEvent>(_onFetchCardsEvent);
  }

  Future<void> _onFetchCardsEvent(FetchCardsEvent event, Emitter<CardsState> emit) async {
    PokemonCardResponse? initialData;
    if (event.page > 1 && state is CardsLoaded) {
      initialData = (state as CardsLoaded).cardResponse;
    }

    emit(CardsLoading(cardResponse: initialData));

    try {
      PokemonCardResponse res = await _restClient.doGetCards(
        page: event.page,
        pageSize: 30,
        query: event.searchQuery.isNotEmpty ? 'name:*${event.searchQuery}* supertype:Pokémon' : 'supertype:Pokémon',
        orderBy: '-set.releaseDate',
      );

      if (initialData != null) {
        final tempList = List<PokemonCard>.from(initialData.data ?? []);
        res = res.copyWith(data: (res.data ?? []) + tempList);
      }

      emit(CardsLoaded(res));
    } catch (e) {
      emit(CardsError(e.toString()));
    }
  }
}
