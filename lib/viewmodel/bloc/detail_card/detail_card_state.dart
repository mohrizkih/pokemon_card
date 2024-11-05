part of 'detail_card_bloc.dart';

sealed class DetailCardState extends Equatable {
  const DetailCardState();
  
  @override
  List<Object> get props => [];
}

final class DetailCardInitial extends DetailCardState {}
