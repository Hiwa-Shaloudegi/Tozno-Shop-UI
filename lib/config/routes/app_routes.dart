import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tozno/features/auth/auth_page.dart';
import 'package:tozno/features/categories/categories_page.dart';
import 'package:tozno/features/home/cubits/bottomnav_cubit.dart';
import 'package:tozno/features/home/home_page.dart';
import 'package:tozno/features/home/main_wrapper.dart';
import 'package:tozno/features/intro/intro_page.dart';
import 'package:tozno/features/splash/splash_page.dart';

part 'app_pages.dart';

abstract class AppRoutes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    AppPages.splash: (context) => const SplashPage(),
    AppPages.intro: (context) => const IntroPage(),
    AppPages.auth: (context) => const AuthPage(),
    AppPages.main: (context) => BlocProvider(
          create: (context) => BottomNavCubit(),
          child: const MainWrapper(),
        ),
    AppPages.home: (context) => const HomePage(),
    AppPages.categories: (context) => const CategoriesPage(),
  };
}
