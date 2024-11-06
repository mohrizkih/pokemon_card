import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'detail_card_event.dart';
part 'detail_card_state.dart';

class DetailCardBloc extends Bloc<DetailCardEvent, DetailCardState> {
  DetailCardBloc() : super(DetailCardInitial()) {
    on<DetailCardEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
