import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tozno/features/auth/auth_page.dart';
import 'package:tozno/features/cart/cart_page.dart';
import 'package:tozno/features/categories/categories_page.dart';
import 'package:tozno/features/checkout/checkout_page.dart';
import 'package:tozno/features/home/cubits/bottomnav_cubit.dart';
import 'package:tozno/features/home/home_page.dart';
import 'package:tozno/features/home/main_wrapper.dart';
import 'package:tozno/features/intro/intro_page.dart';
import 'package:tozno/features/product_detail/product_detail_page.dart';
import 'package:tozno/features/product_list/cubit/view_mode_cubit.dart';
import 'package:tozno/features/product_list/product_list_page.dart';
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
    AppPages.productList: (context) => BlocProvider(
          create: (context) => ViewModeCubit(),
          child: const ProductListPage(),
        ),
    AppPages.cart: (context) => const CartPage(),
    AppPages.productDetail: (context) => const ProductDetailPage(),
    AppPages.checkout: (context) => const CheckoutPage(),
  };
}
