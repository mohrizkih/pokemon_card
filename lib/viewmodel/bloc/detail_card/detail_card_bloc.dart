import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_card/core/repositories/rest_client.dart';
import 'package:pokemon_card/model/pokemon_card_response.dart';

part 'detail_card_event.dart';
part 'detail_card_state.dart';

class DetailCardBloc extends Bloc<DetailCardEvent, DetailCardState> {
  final RestClient _restClient;
  DetailCardBloc(this._restClient) : super(DetailCardInitial()) {
    on<FetchRelatedCardEvent>(_onFetchCardsEvent);
  }

  Future<void> _onFetchCardsEvent(FetchRelatedCardEvent event, Emitter<DetailCardState> emit) async {
    emit(const DetailCardLoading());

    try {
      PokemonCardResponse res = await _restClient.doGetCards(
        page: 1,
        pageSize: 10,
        query: event.types?.isEmpty == true ? 'supertype:${event.supertype}' : 'types:${event.types}',
      );

      emit(DetailCardLoaded(res));
    } catch (e) {
      emit(DetailCardError(e.toString()));
    }
  }
}
