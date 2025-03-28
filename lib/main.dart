import 'package:ece_app/res/app_colors.dart';
import 'package:ece_app/screens/details/product_details.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/homepage/homepage.dart';

void main() {
  runApp(const MyApp());
}

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return Homepage();
      },
    ),
    GoRoute(
      path: '/product',
      builder: (context, state) {
        return ProductDetails();
      },
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Avenir',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primaryColor: AppColors.blue,
        primaryColorLight: AppColors.blueLight,
        primaryColorDark: AppColors.blueDark,
        appBarTheme: const AppBarTheme(
          centerTitle: false,
          backgroundColor: AppColors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: AppColors.blue),
          titleTextStyle: TextStyle(
            color: AppColors.blue,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: AppColors.blue,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
          displayMedium: TextStyle(color: AppColors.gray2, fontSize: 18.0),
          headlineMedium: TextStyle(color: AppColors.gray3, fontSize: 17.0),
          headlineSmall: TextStyle(
            color: AppColors.blue,
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        dividerColor: AppColors.gray2,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: AppColors.blue,
          unselectedItemColor: AppColors.gray2,
          type: BottomNavigationBarType.fixed,
        ),
        navigationBarTheme: const NavigationBarThemeData(
          indicatorColor: AppColors.blue,
        ),
      ),
    );
  }
}
