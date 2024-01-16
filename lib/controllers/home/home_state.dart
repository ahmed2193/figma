part of 'home_bloc.dart';

class HomeState extends Equatable {
  final List<SliderHomeModel>? listSlider;
  const HomeState({ this.listSlider});

  @override
  List<Object> get props => [ listSlider ?? []];
}

final class HomeInitial extends HomeState {}
