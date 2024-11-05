part of 'cards_bloc.dart';

sealed class CardsState extends Equatable {
  const CardsState();

  @override
  List<Object?> get props => [];
}

final class CardsInitial extends CardsState {}

final class CardsLoading extends CardsState {
  const CardsLoading();
}

class CardsLoaded extends CardsState {
  final Iterable<PokemonCard> cards;

  const CardsLoaded(this.cards);

  @override
  List<Object?> get props => [cards];
}

class CardsError extends CardsState {
  final String message;

  const CardsError(this.message);

  @override
  List<Object?> get props => [message];
}
