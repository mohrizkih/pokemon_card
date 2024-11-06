import 'package:flutter/material.dart';
import 'package:pokemon_card/model/card.dart';
import 'package:pokemon_card/viewmodel/bloc/cards/cards_bloc.dart';

class CardsViewmodel extends ChangeNotifier {
  final CardsBloc cardsBloc;

  CardsState _state = CardsInitial();

  CardsViewmodel(this.cardsBloc) {
    startScrollListener();
    cardsBloc.stream.listen((state) {
      _state = state;
      notifyListeners();
    });
  }

  CardsState get state => _state;

  String _searchQuery = '';

  set setSearchQuery(String value) {
    _searchQuery = value;
  }

  void fetchCards({String? searchQuery, required int page}) {
    cardsBloc.add(FetchCardsEvent(searchQuery: searchQuery ?? '', page: page));
  }

  bool get isLoading => _state is CardsLoading;

  bool get hasCards => _state is CardsLoaded;

  int get totalData => hasCards ? (_state as CardsLoaded).cardResponse.totalCount : 0;
  int get currentData => hasCards ? (_state as CardsLoaded).cardResponse.count : 0;
  int get currentPage => hasCards ? (currentData / 30).floor() : 0;

  Iterable<PokemonCard> get cards => hasCards ? (_state as CardsLoaded).cardResponse.data : (isLoading ? ((_state as CardsLoading).cardResponse?.data ?? []) : []);

  String? get errorMessage => _state is CardsError ? (_state as CardsError).message : null;

  final ScrollController _scrollController = ScrollController();
  ScrollController get scrollController => _scrollController;

  void startScrollListener() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels > (0.9 * _scrollController.position.maxScrollExtent) && state is! CardsLoading && (currentData < totalData)) {
        fetchCards(page: currentPage + 1, searchQuery: _searchQuery);
      }
    });
  }

  @override
  void dispose() {
    cardsBloc.close(); // Clean up the bloc
    scrollController.dispose();
    super.dispose();
  }
}
