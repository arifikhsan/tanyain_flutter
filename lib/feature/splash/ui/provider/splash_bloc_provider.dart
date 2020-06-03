import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanyain_flutter/feature/auth/app/auth_check_bloc/auth_check_bloc.dart';
import 'package:tanyain_flutter/injector/injector.dart';

class SplashBlocProvider extends StatelessWidget {
  final Widget child;

  const SplashBlocProvider({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => locator<AuthCheckBloc>()
            ..add(AuthCheckEvent.authCheckRequested()),
        ),
      ],
      child: child,
    );
  }
}
