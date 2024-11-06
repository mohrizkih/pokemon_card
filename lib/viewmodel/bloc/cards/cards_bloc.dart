import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_card/core/repositories/rest_client.dart';
import 'package:pokemon_card/model/card.dart';

part 'cards_event.dart';
part 'cards_state.dart';

class CardsBloc extends Bloc<CardsEvent, CardsState> {
  final RestClient _restClient;
  CardsBloc(this._restClient) : super(CardsInitial()) {
    on<FetchCardsEvent>(_onFetchCardsEvent);
  }

  Future<void> _onFetchCardsEvent(FetchCardsEvent event, Emitter<CardsState> emit) async {
    emit(const CardsLoading());
    try {
      final res = await _restClient.doGetCards(page: 1, pageSize: 20);
      emit(CardsLoaded(res.data));
    } catch (e) {
      emit(CardsError(e.toString()));
    }
  }
}
