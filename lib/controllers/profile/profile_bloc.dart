import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:figma/routers/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(BuildContext context) : super(ProfileInitial()) {
    on<GoToCompleteProfile>((event, emit) {
      context.push(Routes.profileData);
    });

    on<GoToFAQ>((event, emit) {
      context.push(Routes.faq);
    });

    on<GoToAbout>((event, emit) {
      context.push(Routes.about);
    });

    on<GoToPrivPolic>((event, emit) {
      context.push(Routes.privPolic);
    });
  }
}
