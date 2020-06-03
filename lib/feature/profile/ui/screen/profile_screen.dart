import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanyain_flutter/feature/auth/app/auth_bloc/auth_bloc.dart';
import 'package:tanyain_flutter/feature/auth/app/auth_check_bloc/auth_check_bloc.dart';
import 'package:tanyain_flutter/feature/profile/ui/provider/profile_bloc_provider.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProfileBlocProvider(
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Profile'),
              centerTitle: true,
            ),
            body: Container(
              child: Center(
                child: RaisedButton.icon(
                  icon: Icon(Icons.close),
                  label: Text('Logout'),
                  onPressed: () {
                    context
                        .bloc<AuthCheckBloc>()
                        .add(AuthCheckEvent.loggedOut());
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
