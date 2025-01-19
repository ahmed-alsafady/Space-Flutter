import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '/core/constants/app_assets.dart';
import '/core/theme/app_colors.dart';
import '/models/planets_model.dart';
import '/screens/planet_details_page/planet_details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String routeName = "/home";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageController = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var  size = MediaQuery.of(context).size;
    return Scaffold(
      body:SafeArea(
        child: Stack(
          children: [
            Align(
              alignment:Alignment.topCenter ,
                child: Image.asset(AppAssets.header,
                width: size.width,
                fit: BoxFit.cover,
                )),
            Align(
              alignment: Alignment.center,
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Which planet\nwould you like to explore?",
                    style: TextStyle(
                      fontSize: 30,
                      color: AppColors.white,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 16,),
                    Expanded(
                      child: PageView.builder(
                          controller: _pageController,
                          onPageChanged: (int index) {
                            currentIndex = index;
                            setState(() {});
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: PlanetsModel.planets.length,
                          itemBuilder: (context, index) {
                            var currentPlanet = PlanetsModel.planets[index];
                        return Image.asset(currentPlanet.image);
                      }),
                    ),
                    // Image.asset(AppAssets.earth),
                    SizedBox(height: 16,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(onPressed: () {
                          _pageController.previousPage(duration: Duration(milliseconds: 500 ), curve: Curves.easeIn);

                        },
                          style: ElevatedButton.styleFrom(
                          shape: CircleBorder()),
                          child: Icon(Icons.arrow_back_ios_new_rounded),

                        ),
                        Text(PlanetsModel.planets[currentIndex].name,
                        textAlign: TextAlign.center,
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: AppColors.white
                        ),),
                        ElevatedButton(onPressed: () {
                          _pageController.nextPage(duration: Duration(milliseconds: 500 ), curve: Curves.easeIn);
                        },
                          style: ElevatedButton.styleFrom(
                              shape: CircleBorder()),
                          child: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.1,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(16),
                        ),
                        onPressed:() {
                          Navigator.pushNamed(context,
                              PlanetsDetailsPage.routeName,
                              arguments: PlanetsModel.planets[currentIndex]);
                        } ,
                        child: Row(
                          children: [
                            Text("Explore ${PlanetsModel.planets[currentIndex].name}",
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
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
