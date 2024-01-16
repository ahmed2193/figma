part of 'bottom_nav_bloc.dart';

sealed class BottomNavEvent extends Equatable {
  const BottomNavEvent();

  @override
  List<Object> get props => [];
}

class BottomNavInit extends BottomNavEvent {
  const BottomNavInit();
}

class BottomNavOnChange extends BottomNavEvent {
  final int index;
  const BottomNavOnChange(this.index);
}
