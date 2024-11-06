part of 'detail_card_bloc.dart';

sealed class DetailCardEvent extends Equatable {
  const DetailCardEvent();

  @override
  List<Object> get props => [];
}

class FetchRelatedCardEvent extends DetailCardEvent {
  final String? types;
  final String? supertype;
  const FetchRelatedCardEvent({required this.types, this.supertype});
  @override
  List<Object> get props => [];
}
