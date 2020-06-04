part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();
}

class ProfileInitial extends ProfileState {
  @override
  List<Object> get props => [];
}

class CurrentUserProfileLoadedState extends ProfileState {
  final UserModel userModel;

  CurrentUserProfileLoadedState(this.userModel);

  @override
  List<Object> get props => [userModel];
}

class ProfileErrorState extends ProfileState {
  final String message;

  ProfileErrorState({
    @required this.message,
  });

  @override
  List<Object> get props => [message];
}
