import 'package:flutter/material.dart';
// import 'package:model_viewer_plus/model_viewer_plus.dart';
import '/models/planets_model.dart';

import '../../core/theme/app_colors.dart';

class PlanetsDetailsPage extends StatelessWidget {
  const PlanetsDetailsPage({super.key , required this.planet});
  static String routeName = "/details";
  final PlanetsModel planet;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size ;
    return  Scaffold(
      backgroundColor: AppColors.secondaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.secondaryColor,
        title: Text(planet.name,
          style: TextStyle(
          color: AppColors.white,
          fontWeight: FontWeight.bold,
          fontSize: 25
        ),
        ),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(planet.title,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white
                ),),
                SizedBox(height: 10),
                Image.asset(
                    planet.image,
                    height:size.height * 0.4
                ),
                SizedBox(height: 10),
                Text("About",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white
                  ),
                ),
                SizedBox(height: 10),
                Text(planet.about
                    ,style:
                    TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: AppColors.white
                )),
                SizedBox(height: 10),
                Text("Distance from Sun (km) : ${planet.distanceFromSun}",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white
                ),),
                SizedBox(height: 10),
                Text("Length of Day (hours) : ${planet.lengthOfDay}",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white
                  ),),
                SizedBox(height: 10),
                Text("Orbital Period (Earth years) : ${planet.orbitalPeriod}",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white
                  ),),
                SizedBox(height: 10),
                Text("Radius (km) : ${planet.radius}",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white
                  ),),
                SizedBox(height: 10),
                Text("Mass (kg) : ${planet.mass}",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white
                  ),),
                SizedBox(height: 10),
                Text("Gravity (m/s²) : ${planet.gravity}",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white
                  ),),
                SizedBox(height: 10),
                Text("Surface Area (km²): ${planet.surfaceArea}",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white
                  ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
