import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanyain_flutter/core/feature/app/auth_bloc/auth_bloc.dart';
import 'package:tanyain_flutter/feature/profile/app/bloc/profile_bloc.dart';
import 'package:tanyain_flutter/injector/injector.dart';

class ProfileBlocProvider extends StatelessWidget {
  final Widget child;

  const ProfileBlocProvider({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => locator<AuthBloc>(),
        ),
        BlocProvider(
          create: (context) =>
              locator<ProfileBloc>()..add(GetCurrentUserProfileEvent()),
        ),
      ],
      child: child,
    );
  }
}
