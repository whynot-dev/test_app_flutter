import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_flutter/app/presentation/screens/about_app/bloc/about_app_bloc.dart';
import 'package:test_app_flutter/app/presentation/screens/blogs/bloc/blogs_bloc.dart';
import 'package:test_app_flutter/app/presentation/screens/navigation/bloc/navigation_bloc.dart';
import 'package:test_app_flutter/app/presentation/screens/navigation/navigation_screen.dart';
import 'package:test_app_flutter/app/presentation/screens/news/bloc/news_bloc.dart';
import 'package:test_app_flutter/app/resources/app_colors.dart';
import 'package:test_app_flutter/app/widgets/routes/default_page_route_without_animation.dart';
import 'package:test_app_flutter/di/injection.dart';

import 'bloc/splash_bloc.dart';

class SplashScreen extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  SplashScreen({required this.navigatorKey});

  @override
  Widget build(BuildContext context) => BlocListener<SplashBloc, SplashState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state) async {
          var action = state.action;
          if (action is NavigateToMainScreen) {
            await setUpLocatorWithDependencies(context: context, navigatorKey: navigatorKey);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (context) => NavigationBloc(),
                    ),
                    BlocProvider(
                      create: (context) => BlogsBloc(
                        articlesRepository: injection(),
                      ),
                    ),
                    BlocProvider(
                      create: (context) => NewsBloc(
                        articlesRepository: injection(),
                      ),
                    ),
                    BlocProvider(
                      create: (context) => AboutAppBloc(),
                    ),
                  ],
                  child: NavigationScreen(),
                ),
              ),
            );
          }
        },
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 4),
                Container(height: 1, width: 32, color: AppColors.white),
              ],
            ),
          ),
        ),
      );
}
