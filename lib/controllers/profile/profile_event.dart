part of 'profile_bloc.dart';

sealed class ProfileEvent extends Equatable {
  const ProfileEvent();

  @override
  List<Object> get props => [];
}

class GoToCompleteProfile extends ProfileEvent{}

class GoToFAQ extends ProfileEvent{}

class GoToAbout extends ProfileEvent{}

class GoToFeedbacks extends ProfileEvent{}

class GoToPrivPolic extends ProfileEvent{}