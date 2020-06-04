import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:tanyain_flutter/core/feature/data/model/user_model.dart';
import 'package:tanyain_flutter/core/usecase/no_param.dart';
import 'package:tanyain_flutter/feature/profile/domain/usecase/get_current_user_usecase.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetCurrentUserUsecase getCurrentUserUsecase;

  ProfileBloc({
    @required this.getCurrentUserUsecase,
  });

  @override
  ProfileState get initialState => ProfileInitial();

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    if (event is GetCurrentUserProfileEvent) {
      final eitherUserOrFailure = await getCurrentUserUsecase(NoParam());
      yield* eitherUserOrFailure.fold(
        (failure) async* {
          yield ProfileErrorState(message: 'gagal');
        },
        (userModel) async* {
          yield CurrentUserProfileLoadedState(userModel);
        },
      );
    }
  }
}
