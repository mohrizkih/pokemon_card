part of 'cards_bloc.dart';

sealed class CardsEvent extends Equatable {
  const CardsEvent();

  @override
  List<Object> get props => [];
}

class FetchCardsEvent extends CardsEvent {
  final String searchQuery;
  final int page;
  const FetchCardsEvent({required this.searchQuery, required this.page});
  @override
  List<Object> get props => [];
}
