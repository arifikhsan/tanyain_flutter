import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanyain_flutter/core/feature/data/model/user_model.dart';
import 'package:tanyain_flutter/feature/auth/domain/repository/auth_facade_repository.dart';

part 'auth_check_event.dart';
part 'auth_check_state.dart';

part 'auth_check_bloc.freezed.dart';

class AuthCheckBloc extends Bloc<AuthCheckEvent, AuthCheckState> {
  final AuthFacadeRepository authFacadeRepository;

  AuthCheckBloc({
    @required this.authFacadeRepository,
  });

  @override
  AuthCheckState get initialState => AuthCheckState.initial();

  @override
  Stream<AuthCheckState> mapEventToState(
    AuthCheckEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final userOption = await authFacadeRepository.getLoggedInUser();
        yield userOption.fold(
          () => AuthCheckState.unauthenticated(),
          (user) => AuthCheckState.authenticated(user),
        );
      },
      loggedOut: (e) async* {
        await authFacadeRepository.logout();
        yield AuthCheckState.unauthenticated();
      },
    );
  }
}
