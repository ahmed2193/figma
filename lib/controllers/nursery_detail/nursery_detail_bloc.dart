import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'nursery_detail_event.dart';
part 'nursery_detail_state.dart';

class NurseryDetailBloc extends Bloc<NurseryDetailEvent, NurseryDetailState> {
  NurseryDetailBloc() : super(NurseryDetailInitial()) {
    on<NurseryDetailEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
