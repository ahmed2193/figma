import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:figma/routers/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc(BuildContext context) : super(SplashInitial()) {
    on<SplashLoading>((event, emit) async {
      await Future.delayed(const Duration(seconds: 2));
      emit(SplashFinish());
    });

    on<GoToLoginPage>((event, emit) {
      context.go(Routes.login);
    });
  }
}
