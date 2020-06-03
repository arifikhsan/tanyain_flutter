import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanyain_flutter/feature/auth/app/auth_bloc/auth_bloc.dart';
import 'package:tanyain_flutter/feature/auth/app/auth_check_bloc/auth_check_bloc.dart';
import 'package:tanyain_flutter/feature/auth/ui/provider/auth_bloc_provider.dart';
import 'package:tanyain_flutter/router/router.gr.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return AuthBlocProvider(
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.authFailureOrSuccessOption.fold(
            () => {},
            (either) => either.fold(
              (failure) {
                Flushbar(
                  message: failure.map(
                    cancelledByUser: (_) => 'cancelledByUser',
                    serverError: (_) => 'serverError',
                    emailAlreadyInUse: (_) => 'emailAlreadyInUse',
                    invalidEmailAndPasswordCombination: (_) =>
                        'invalidEmailAndPasswordCombination',
                  ),
                )..show(context);
              },
              (unit) {
                ExtendedNavigator.ofRouter<Router>()
                    .pushReplacementNamed(Routes.homeScreen);
                context
                    .bloc<AuthCheckBloc>()
                    .add(AuthCheckEvent.authCheckRequested());
              },
            ),
          );
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Login'),
            ),
            body: Container(
              child: Center(
                child: RaisedButton.icon(
                  icon: Icon(Icons.vpn_key),
                  label: Text('Login With Google'),
                  onPressed: () {
                    context
                        .bloc<AuthBloc>()
                        .add(AuthEvent.loginWithGooglePressed());
                    context
                        .bloc<AuthCheckBloc>()
                        .add(AuthCheckEvent.authCheckRequested());
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
