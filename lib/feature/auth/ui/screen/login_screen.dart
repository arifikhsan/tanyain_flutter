import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanyain_flutter/core/constant/message.dart';
import 'package:tanyain_flutter/feature/auth/app/login_form_bloc/login_form_bloc.dart';
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
      child: BlocConsumer<LoginFormBloc, LoginFormState>(
        listener: (context, state) {
          state.authFailureOrSuccessOption.fold(
            () => {},
            (either) => either.fold(
              (failure) {
                Flushbar(
                  message: failure.map(
                    cancelledByUser: (_) => CANCELLED_BY_USER,
                    serverError: (_) => SERVER_ERROR,
                    emailAlreadyInUse: (_) => EMAIL_ALREADY_IN_USE,
                    invalidEmailAndPasswordCombination: (_) =>
                        INVALID_EMAIL_AND_PASSWORD,
                  ),
                  duration: Duration(seconds: 3),
                )..show(context);
              },
              (unit) {
                ExtendedNavigator.ofRouter<Router>()
                    .pushReplacementNamed(Routes.homeScreen);
              },
            ),
          );
        },
        builder: (context, state) {
          if (state.isSubmitting) {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else {
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
                          .bloc<LoginFormBloc>()
                          .add(LoginWithGooglePressedEvent());
                    },
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
