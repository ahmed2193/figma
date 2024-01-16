import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:figma/routers/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(BuildContext context) : super(LoginInitial()) {
    on<GoToOTPPage>((event, emit) {
      context.push(Routes.otp);
    });
  }
}
