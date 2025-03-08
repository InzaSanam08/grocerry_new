
import 'package:flutter/material.dart';
import 'package:flutter_svg_image/flutter_svg_image.dart';
import 'package:groceryapp/components/app_colors.dart';
import 'package:groceryapp/screens/login_screen/login_first.dart';
import 'package:groceryapp/widgets/custum_containers.dart';

class splash_two extends StatefulWidget {
  const splash_two({super.key});

  @override
  State<splash_two> createState() => _splash_twoState();
}

class _splash_twoState extends State<splash_two> {


@override
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: App_colors
          .background_color, // Make sure App_colors is correctly defined
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 196),
            child: Center(
              child: Text(
                'Get your groceries\ndelivered to your home',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'The best delivery app in town for\ndelivering your daily fresh groceries',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),

          // Container with Stack to position image at the bottom
          Expanded(
            child: Container(
              // color: Colors.amber,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0, // Move the image to the bottom of the screen
                    left: 0, right: 0,
                    child: Image(
                      image: SvgImage.asset(
                          'lib/assets/images/splash_images/Vector2.svg'),
                      fit: BoxFit
                          .cover, // Optional: Use BoxFit to adjust image size
                    ),
                  ),
                  Positioned(
                    // Move the image to the bottom of the screen
                    left: 0, right: 0,
                    child: Image(
                      image: SvgImage.asset(
                          'lib/assets/images/splash_images/logo.svg'),
                      // Optional: Use BoxFit to adjust image size
                    ),
                  ),


                 Positioned(
                 top: 200,
                    left: 0, right: 0,
                    child:Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70),
                      child: custum_container(text: 'Go to Login',onTap: () {
                        setState(() {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Login_first_page()));
                        });
                      },),
                    )
                  ),


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
















// import 'package:flutter/material.dart';
// import 'package:flutter_svg_image/flutter_svg_image.dart';
// import 'package:groceryapp/assets/app_colors.dart';
// // import 'package:groceryapp/assets/app_colors.dart';

// class splash_two extends StatefulWidget {
//   const splash_two({super.key});

//   @override
//   State<splash_two> createState() => _splash_twoState();
// }

// class _splash_twoState extends State<splash_two> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: App_colors
//           .background_color, // Make sure App_colors is correctly defined
//       body: Column(
//         children: [
//           const Padding(
//             padding: EdgeInsets.only(top: 196),
//             child: Center(
//               child: Text(
//                 'Get your groceries\ndelivered to your home',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                     fontSize: 25,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold),
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           const Text(
//             'The best delivery app in town for\ndelivering your daily fresh groceries',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//                 fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(
//             height: 50,
//           ),

//            Container(
//              child: Stack(
//               children: [
//                   Positioned(
//                     //  bottom: 20.0,  // Adjust the value to move the image up or down
//                    left: 0,
//                    right: 0,
//                     child: Image(image: SvgImage.asset('lib/assets/images/splash_images/Vector2.svg'))),
//               ],
//              ),
//            )
          
//         ],
//       ),
//     );
//   }
// }



























// import 'package:flutter/material.dart';
// import 'package:flutter_svg_image/flutter_svg_image.dart';
// import 'package:groceryapp/assets/app_colors.dart';
// // import 'package:groceryapp/assets/app_colors.dart';

// class splash_two extends StatefulWidget {
//   const splash_two({super.key});

//   @override
//   State<splash_two> createState() => _splash_twoState();
// }

// class _splash_twoState extends State<splash_two> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: App_colors
//           .background_color, // Make sure App_colors is correctly defined
//       body: Column(
//         children: [
//           const Padding(
//             padding: EdgeInsets.only(top: 196),
//             child: Center(
//               child: Text(
//                 'Get your groceries\ndelivered to your home',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                     fontSize: 25,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold),
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           const Text(
//             'The best delivery app in town for\ndelivering your daily fresh groceries',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//                 fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(
//             height: 50,
//           ),
//           Expanded(
//             child: Container(
//               // color: Colors.amber,
//               child: Stack(
//                 // alignment: Alignment.,
//                 children: [

//                   Image(image: SvgImage.asset('lib/assets/images/Vector2.svg')),//,height: MediaQuery.of(context).size.height*2.05
//                   Positioned(
//                       bottom: 229,
//                       child: Container(
//                         height: 290,width: 390,
//                         child: Image(
//                             image: SvgImage.asset('lib/assets/images/logo.svg',)
//                             ),
//                       ))
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }








































