import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanyain_flutter/feature/auth/app/auth_check_bloc/auth_check_bloc.dart';
import 'package:tanyain_flutter/feature/home/ui/provider/home_bloc_provider.dart';
import 'package:tanyain_flutter/feature/profile/ui/screen/profile_screen.dart';
import 'package:tanyain_flutter/feature/question/ui/screen/questions_screen.dart';
import 'package:tanyain_flutter/feature/search/ui/screen/search_screen.dart';
import 'package:tanyain_flutter/router/router.gr.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPageIndex = 0;

  List<Widget> _pages = [
    QuestionsScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return HomeBlocProvider(
      child: BlocListener<AuthCheckBloc, AuthCheckState>(
        listener: (context, state) {
          state.maybeMap(
            unauthenticated: (_) {
              ExtendedNavigator.ofRouter<Router>()
                  .pushReplacementNamed(Routes.loginScreen);
            },
            orElse: () {},
          );
        },
        child: Scaffold(
          body: _pages.elementAt(_currentPageIndex),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentPageIndex,
            onTap: (index) {
              setState(() {
                _currentPageIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('Search'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
