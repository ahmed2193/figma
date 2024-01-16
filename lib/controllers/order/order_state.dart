part of 'order_bloc.dart';

sealed class OrderState extends Equatable {
  final int? indexPage;
  const OrderState(this.indexPage);

  @override
  List<Object> get props => [indexPage ?? 0];
}

final class OrderInitial extends OrderState {
  const OrderInitial(int? indexPage) : super(indexPage);
}

final class OnChangedPage extends OrderState {
  const OnChangedPage(int? indexPage) : super(indexPage);
}
