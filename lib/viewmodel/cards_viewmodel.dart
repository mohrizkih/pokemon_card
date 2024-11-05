import 'package:flutter/material.dart';
import 'package:pokemon_card/model/card.dart';
import 'package:pokemon_card/viewmodel/bloc/cards/cards_bloc.dart';

class CardsViewmodel extends ChangeNotifier {
  final CardsBloc cardsBloc;

  CardsState _state = CardsInitial();

  CardsViewmodel(this.cardsBloc) {
    cardsBloc.stream.listen((state) {
      _state = state;
      notifyListeners();
    });
  }

  CardsState get state => _state;

  void fetchCards(String searchQuery) {
    cardsBloc.add(FetchCardsEvent(searchQuery));
  }

  // Helper method to check if user data is loading
  bool get isLoading => _state is CardsLoading;

  // Helper method to check if user data was successfully loaded
  bool get hasCards => _state is CardsLoaded;

  // Get the user data if available
  Iterable<PokemonCard>? get cards => hasCards ? (_state as CardsLoaded).cards : null;

  // Get error message if an error occurred
  String? get errorMessage => _state is CardsError ? (_state as CardsError).message : null;

  @override
  void dispose() {
    cardsBloc.close(); // Clean up the bloc
    super.dispose();
  }
}
