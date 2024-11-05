part of 'cards_bloc.dart';

sealed class CardsEvent extends Equatable {
  const CardsEvent();

  @override
  List<Object> get props => [];
}

class FetchCardsEvent extends CardsEvent {
  final String searchQuery;
  const FetchCardsEvent(this.searchQuery);
  @override
  List<Object> get props => [];
}
