import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:tanyain_flutter/core/feature/data/model/user_model.dart';
import 'package:tanyain_flutter/core/feature/domain/usecase/get_current_user_usecase.dart';
import 'package:tanyain_flutter/feature/auth/domain/repository/auth_facade_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthFacadeRepository authFacadeRepository;
  final GetCurrentUserUsecase getCurrentUserUsecase;

  AuthBloc({
    @required this.authFacadeRepository,
    @required this.getCurrentUserUsecase,
  });

  @override
  AuthState get initialState => AuthState.initial();

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      checkRequested: (e) async* {
        final userOption = await authFacadeRepository.getLoggedInUser();
        yield* userOption.fold(
          () async* {
            yield AuthState.unauthenticated();
          },
          (userModel) async* {
            yield AuthState.authenticated(userModel);
          },
        );
      },
      logout: (e) async* {
        await authFacadeRepository.logout();
        yield AuthState.unauthenticated();
      },
    );
  }
}
