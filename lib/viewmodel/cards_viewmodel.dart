import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokemon_card/core/core.dart';
import 'package:pokemon_card/model/pokemon_card_response.dart';
import 'package:pokemon_card/service_locator.dart';
import 'package:pokemon_card/viewmodel/bloc/cards/cards_bloc.dart';
import 'package:pokemon_card/viewmodel/bloc/detail_card/detail_card_bloc.dart';
import 'package:rxdart/rxdart.dart';

class CardsViewmodel extends ChangeNotifier {
  final CardsBloc cardsBloc;
  final DetailCardBloc detailCardBloc;

  CardsState _state = CardsInitial();
  DetailCardState _stateDetail = DetailCardInitial();

  CardsViewmodel(this.cardsBloc, this.detailCardBloc) {
    startScrollListener();

    _searchQuery.debounceTime(const Duration(milliseconds: 500)).listen(onSearch);

    cardsBloc.stream.listen((state) {
      _state = state;
      notifyListeners();
    });

    detailCardBloc.stream.listen((state) {
      _stateDetail = state;
      notifyListeners();
    });
  }

  // START OF CARDS

  CardsState get state => _state;

  final _searchQuery = BehaviorSubject<String>();

  Function(String) get onSearchChanged => _searchQuery.sink.add;

  void onSearch(String? query) {
    cardsBloc.add(FetchCardsEvent(searchQuery: query ?? '', page: 1));
  }

  void fetchCards({String? searchQuery, required int page}) {
    cardsBloc.add(FetchCardsEvent(searchQuery: searchQuery ?? '', page: page));
  }

  bool get isLoading => _state is CardsLoading;

  bool get isError => _state is CardsError;

  bool get hasCards => _state is CardsLoaded;

  int get totalData => (hasCards ? (_state as CardsLoaded).cardResponse.totalCount : (isLoading ? ((_state as CardsLoading).cardResponse?.totalCount ?? 0) : 0)) ?? 0;
  int get currentData => (hasCards ? (_state as CardsLoaded).cardResponse.data?.length : (isLoading ? ((_state as CardsLoading).cardResponse?.data?.length ?? 0) : 0)) ?? 0;
  int get currentPage => (currentData / 30).floor();

  List<PokemonCard> get cards => (hasCards ? (_state as CardsLoaded).cardResponse.data : (isLoading ? ((_state as CardsLoading).cardResponse?.data ?? []) : [])) ?? [];

  String? get errorMessage => _state is CardsError ? (_state as CardsError).message : null;

  final ScrollController _scrollController = ScrollController();
  ScrollController get scrollController => _scrollController;

  void startScrollListener() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels > (0.96 * _scrollController.position.maxScrollExtent) && state is! CardsLoading && (currentData < totalData)) {
        fetchCards(page: currentPage + 1, searchQuery: _searchQuery.valueOrNull);
      }
    });
  }

  // END OF CARD

  //START OF DETAIL

  PokemonCard? _pokemonCard;

  PokemonCard? get pokemonCard => _pokemonCard;

  DetailCardState get stateDetail => _stateDetail;

  bool get isLoadingDetail => _stateDetail is DetailCardLoading;

  bool get isRelatedCardLoaded => _stateDetail is DetailCardLoaded;

  List<PokemonCard> get cardsRelated => (isRelatedCardLoaded ? (_stateDetail as DetailCardLoaded).cardResponse.data : []) ?? [];

  void fetchRelated({String? type, String? supertype}) {
    detailCardBloc.add(FetchRelatedCardEvent(types: type, supertype: supertype));
  }

  void onTapCard(PokemonCard card, {bool isFromDetail = false}) {
    _pokemonCard = card;
    if (_pokemonCard != null) {
      fetchRelated(type: _pokemonCard?.types?.firstOrNull ?? '', supertype: _pokemonCard?.supertype ?? '');
      isFromDetail ? sl<AppRouter>().replace(const DetailCardRoute()) : sl<AppRouter>().push(const DetailCardRoute());
    }
  }

  //END OF DETAIL

  @override
  void dispose() {
    cardsBloc.close();
    detailCardBloc.close();
    _scrollController.dispose();
    _searchQuery.close();
    super.dispose();
  }
}
