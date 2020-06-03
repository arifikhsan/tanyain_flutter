import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanyain_flutter/feature/auth/app/auth_check_bloc/auth_check_bloc.dart';
import 'package:tanyain_flutter/feature/splash/ui/provider/splash_bloc_provider.dart';
import 'package:tanyain_flutter/router/router.gr.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashBlocProvider(
      child: BlocListener<AuthCheckBloc, AuthCheckState>(
        listener: (context, state) {
          state.map(
            initial: (context) => {},
            authenticated: (context) => ExtendedNavigator.ofRouter<Router>()
                .pushReplacementNamed(Routes.homeScreen),
            unauthenticated: (context) => ExtendedNavigator.ofRouter<Router>()
                .pushReplacementNamed(Routes.loginScreen),
          );
        },
        child: Scaffold(
          body: Center(
            child: Text('Loading...'),
          ),
        ),
      ),
    );
  }
}
