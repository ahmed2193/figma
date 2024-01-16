import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'order_event.dart';
part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  PageController pageController = PageController();
  OrderBloc() : super(const OrderInitial(0)) {
    on<ChangeIndexPageOrder>((event, emit) {
      emit(OrderInitial(event.indexPage));
      pageController.animateToPage(event.indexPage ?? 0,
          duration: const Duration(milliseconds: 200), curve: Curves.easeInOut);
    });
  }
}
