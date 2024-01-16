part of 'order_bloc.dart';

sealed class OrderEvent extends Equatable {
  const OrderEvent();

  @override
  List<Object> get props => [];
}

class ChangeIndexPageOrder extends OrderEvent {
  final int? indexPage;
  const ChangeIndexPageOrder(this.indexPage);
}
