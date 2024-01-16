import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:figma/models/home/slider_home_model.dart';
import 'package:figma/routers/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(BuildContext context) : super(HomeInitial()) {
    on<GetListDropDownHome>((event, emit) {
      emit(HomeState(listSlider: [
        SliderHomeModel(true),
        SliderHomeModel(),
        SliderHomeModel(),
        SliderHomeModel()
      ]));
    });

    on<GoToLocation>((event, emit) {
      context.push(Routes.location);
    });

    on<GoToProfile>((event, emit) {
      context.push(Routes.profile);
    });

    on<GoToNurseryDetail>((event, emit) {
      context.push(Routes.detailNursery);
    });

    on<GoToCoupons>((event, emit) {
      context.push(Routes.coupons);
    });
  }
}
