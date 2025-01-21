import 'package:flutter/material.dart';

import '/core/theme/app_colors.dart';
import '/screens/home/home_page.dart';
import 'models/planets_model.dart';
import 'screens/planet_details_page/planet_details_page.dart';
import 'screens/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            iconColor: AppColors.white,
            padding: const EdgeInsets.all(16),
          )
        ),
        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(
            color: AppColors.white
          )
        )
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashPage.routeName,
      routes: {
        SplashPage.routeName: (BuildContext _) {
          return const SplashPage();
        },
        HomePage.routeName: (BuildContext _) {
          return const HomePage();
        },
        PlanetsDetailsPage.routeName: (BuildContext context) {
          var planet = ModalRoute.of(context)!.settings.arguments as PlanetsModel;
          return PlanetsDetailsPage(planet: planet);
        },


      },
    );
  }
}