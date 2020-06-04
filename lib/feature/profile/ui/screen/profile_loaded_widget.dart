import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanyain_flutter/core/feature/app/auth_bloc/auth_bloc.dart';
import 'package:tanyain_flutter/core/feature/data/model/user_model.dart';

class ProfileLoadedWidget extends StatelessWidget {
  final UserModel userModel;

  const ProfileLoadedWidget({
    Key key,
    @required this.userModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '${userModel.name}',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    '${userModel.emailAddress}',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: RaisedButton.icon(
                icon: Icon(Icons.close),
                label: Text('Logout'),
                onPressed: () {
                  BlocProvider.of<AuthBloc>(context).add(AuthEvent.logout());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
