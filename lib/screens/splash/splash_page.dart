import 'package:flutter/material.dart';
import '/core/constants/app_assets.dart';
import '/core/theme/app_colors.dart';
import '/screens/home/home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  static const routeName = '/splash';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Stack(
        children: [
        Image.asset(AppAssets.splashBg,),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text("Explore \nThe \nUniverse ",
                style: TextStyle(
                  color:AppColors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16 ,vertical: 32),
            child: Align(
              alignment: Alignment.bottomCenter,
              child:
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(16),
                ),
                  onPressed:() {
                    Navigator.pushReplacementNamed(context, HomePage.routeName);
                  } ,
                  child: Row(
                    children: [
                      Text("Explore",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: AppColors.white
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color:AppColors.white,
                        size: 30,)
                    ],
                  )
              ),
            ),
          )
      ],)
    );
  }
}
