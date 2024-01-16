part of 'bottom_nav_bloc.dart';

class BottomNavState extends Equatable {
  final List<NavigationMenuHomeModel>? listNav;
  const BottomNavState({this.listNav});

  BottomNavState copyWith({List<NavigationMenuHomeModel>? listNav}) {
    return BottomNavState(listNav: listNav ?? this.listNav);
  }

  @override
  List<Object> get props => [listNav ?? []];
}

final class BottomNavInitial extends BottomNavState {}
