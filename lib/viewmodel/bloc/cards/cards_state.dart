part of 'cards_bloc.dart';

sealed class CardsState extends Equatable {
  const CardsState();

  @override
  List<Object?> get props => [];
}

final class CardsInitial extends CardsState {}

final class CardsLoading extends CardsState {
  final PokemonCardResponse? cardResponse;

  const CardsLoading({this.cardResponse});

  @override
  List<Object?> get props => [cardResponse];
}

class CardsLoaded extends CardsState {
  final PokemonCardResponse cardResponse;

  const CardsLoaded(this.cardResponse);

  @override
  List<Object?> get props => [cardResponse];
}

class CardsError extends CardsState {
  final String message;

  const CardsError(this.message);

  @override
  List<Object?> get props => [message];
}
