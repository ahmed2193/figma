import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:figma/routers/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

part 'otp_event.dart';
part 'otp_state.dart';

class OtpBloc extends Bloc<OtpEvent, OtpState> {
  OtpBloc(BuildContext context) : super(const OtpInitial(0)) {
    on<GoToHomePage>((event, emit) {
      context.go(Routes.navHome);
    });


  }
}
