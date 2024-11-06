part of 'detail_card_bloc.dart';

sealed class DetailCardState extends Equatable {
  const DetailCardState();

  @override
  List<Object?> get props => [];
}

final class DetailCardInitial extends DetailCardState {}

final class DetailCardLoading extends DetailCardState {
  const DetailCardLoading();
}

class DetailCardLoaded extends DetailCardState {
  final PokemonCardResponse cardResponse;

  const DetailCardLoaded(this.cardResponse);

  @override
  List<Object?> get props => [cardResponse];
}

class DetailCardError extends DetailCardState {
  final String message;

  const DetailCardError(this.message);

  @override
  List<Object?> get props => [message];
}
