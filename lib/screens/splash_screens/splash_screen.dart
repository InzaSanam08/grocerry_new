import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg_image/flutter_svg_image.dart';
import 'package:groceryapp/components/app_colors.dart';
import 'package:groceryapp/screens/splash_screens/splash_two.dart';
// import 'package:groceryapp/widgets/custum_buttons.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {

 @override
  void initState() {
    super.initState();
    
    // 3 seconds ke baad home screen par navigate karenge
    Timer(const Duration(seconds: 3), () {
      // `Navigator.pushReplacement()` ke through Splash screen ko replace karenge
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const splash_two()),
      );
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: App_colors.background_color,  // Make sure App_colors is correctly defined
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 250,),
            child: Center(
              child: Image(
                    fit: BoxFit.contain,
                    image: SvgImage.asset(height: 219,width:219 ,
                      'lib/assets/images/splash_images/Splashlogo.svg',
                    ),
                  ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 139,),
            child: Center(child: Text('E-Mart',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),)),
          )
        
        ],
      ),
    );
  }
}
