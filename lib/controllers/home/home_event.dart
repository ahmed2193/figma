part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class GetListDropDownHome extends HomeEvent {}

class GoToLocation extends HomeEvent{}

class GoToProfile extends HomeEvent{}

class GoToCoupons extends HomeEvent{}

class GoToNurseryDetail extends HomeEvent{}
