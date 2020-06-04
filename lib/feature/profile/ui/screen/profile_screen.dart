import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanyain_flutter/core/constant/message.dart';
import 'package:tanyain_flutter/feature/profile/app/bloc/profile_bloc.dart';
import 'package:tanyain_flutter/feature/profile/ui/provider/profile_bloc_provider.dart';
import 'package:tanyain_flutter/feature/profile/ui/screen/profile_loaded_widget.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProfileBlocProvider(
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          if (state is CurrentUserProfileLoadedState) {
            return ProfileLoadedWidget(
              userModel: state.userModel,
            );
          } else if (state is ProfileErrorState) {
            return Center(
              child: Text('Error State?'),
            );
          } else {
            return Center(
              child: Text(WHATS_HAPPEN),
            );
          }
        },
      ),
    );
  }
}
