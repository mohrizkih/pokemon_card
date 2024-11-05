import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'detail_card_event.dart';
part 'detail_card_state.dart';

class DetailCardBloc extends Bloc<DetailCardEvent, DetailCardState> {
  DetailCardBloc() : super(DetailCardInitial()) {
    on<DetailCardEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
