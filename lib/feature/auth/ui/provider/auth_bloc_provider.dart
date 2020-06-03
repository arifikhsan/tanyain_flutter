import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanyain_flutter/feature/auth/app/auth_bloc/auth_bloc.dart';
import 'package:tanyain_flutter/injector/injector.dart';

class AuthBlocProvider extends StatelessWidget {
  final Widget child;

  const AuthBlocProvider({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => locator<AuthBloc>(),
        ),
      ],
      child: child,
    );
  }
}
