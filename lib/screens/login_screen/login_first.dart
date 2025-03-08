import 'package:flutter/material.dart';
import 'package:flutter_svg_image/flutter_svg_image.dart';
import 'package:groceryapp/components/app_colors.dart';
import 'package:groceryapp/widgets/custum_containers.dart';
import 'package:groceryapp/widgets/custum_textFormField.dart';

class Login_first_page extends StatefulWidget {
  const Login_first_page({super.key});

  @override
  State<Login_first_page> createState() => _Login_first_pageState();
}

class _Login_first_pageState extends State<Login_first_page> {
  @override
  Widget build(BuildContext context) {
    // Get screen width for responsive design
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

          
    return Scaffold(
      backgroundColor: App_colors.background_color,
      body: Column(
       
        children: [
 Container(
   child: Expanded(
     child: Stack(
                  children: [
                    // Image that covers the full screen width and adjusts with device size
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Image(
                        image: SvgImage.asset(
                          'lib/assets/images/splash_images/Vector.svg',
                        ),
                        width: screenWidth,  // Ensures the image width adjusts with screen width
                        height: screenheight*0.690,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Login text at the top of the screen
                    const Positioned(
                      top: 100,
                      left: 0,
                      right: 0,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'LogIn',
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    
                    ),
                    // Username input field with padding
                    const Positioned(
                      top: 180,
                      left: 0,
                      right: 0,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: custum_textFormField(
                            texthint: 'User name',
                            prefixicon: Icon(
                              Icons.person,
                              size: 24,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Password input field
                    const Positioned(
                      top: 260,
                      left: 0,
                      right: 0,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: custum_textFormField(
                            texthint: 'Password',
                            prefixicon: Icon(
                              Icons.lock,
                              size: 24,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Login button positioned below input fields
                     Positioned(
                      top: 180,
                      left: 0,
                      right: 0,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: custum_container(
                          text: 'Login',
                          onTap: () {
                            
                          },
                        ),
                      ),
                    ),
                 
                
                          Positioned(
                   top: 450,
                      left: 0,
                      right: 0,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text('Forget your password?',style: TextStyle(color: App_colors.text_color,fontSize: 14),))
                      
                      
                      )
                
                
                
          ,
          const Positioned(
            top: 650,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.topCenter,
              child: Text('Or Connect with',style: TextStyle(color: Colors.white,),)),
          ),      
                
      const Positioned(
            top: 690,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.topCenter,
              child: Text('Dont’t have an account?  Signup',style: TextStyle(color: Color(0xffF26A2C),fontSize: 14),)),
          ),      
                
                  ],
                ),
// Dont’t have an account?  Signup
   ),
 ),

 

      
        ],
      ),
    );
  }
}






















// ////////////////////////////////
// library;

// import 'package:flutter/material.dart';
// import 'package:flutter_svg_image/flutter_svg_image.dart';
// import 'package:groceryapp/assets/app_colors.dart';
// import 'package:groceryapp/widgets/custum_containers.dart';
// import 'package:groceryapp/widgets/custum_textFormField.dart';
// // import 'package:groceryapp/widgets/custum_textFormField.dart';
// // import 'package:flutter_svg_image/flutter_svg_image.dart';

// class Login_first_page extends StatefulWidget {
//   const Login_first_page({super.key});

//   @override
//   State<Login_first_page> createState() => _Login_first_pageState();
// }

// class _Login_first_pageState extends State<Login_first_page> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: App_colors.background_color,
//       body: Stack(
//         children: [
//           Container(
//             child: Image(
           
//               image: SvgImage.asset(
//                 'lib/assets/images/splash_images/Vector.svg',
           
//               ),
//               fit: BoxFit.cover,
//             ),
//           ),
//           const Positioned(
//             top: 100,
//             left: 0,
//             right: 0,
//             bottom: 0,
//             child: Align(
//               alignment: Alignment.topCenter,
//               child: Text(
//                 'LogIn',
//                 style: TextStyle(
//                     fontSize: 28,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold),
//               ),
//             ),
//           ),
//           /////////// textFormField
//            const Positioned(
//             top: 150,
//             left: 0,
//             right: 0,
//             bottom: 0,
//              child: Align(alignment: Alignment.topCenter,
//                child: Padding(
//                  padding: EdgeInsets.symmetric(horizontal: 40),
//                  child: custum_textFormField(
                  
//                   texthint: 'User name',
//                   prefixicon: Icon(
//                     Icons.person,
//                     size: 24,
//                     color: Colors.black,
//                   ),
//                            ),
//                ),
//              ),
//            )
//           ,
        

         
          
//           const Positioned(
//             left: 0,
//             right: 0,
//             bottom: 0,
//             top: 220,
//             child: Align(
//               alignment: Alignment.topCenter,
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 40),
//                 child: custum_textFormField(
//                   texthint: 'password',
//                   prefixicon: Icon(
//                     Icons.lock,
//                     size: 24,
//                     color: Colors.black,
//                   ),
                
                  
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             top:230 ,
//             right: 0,
//             left: 0,
//             // bottom: 0,
//             child: Align(
//               alignment: Alignment.topCenter,
//               child: custum_container(text: 'Login',)))


//         ],
//       ),
//     );
//   }
// }






















































// import 'package:flutter/material.dart';
// import 'package:flutter_svg_image/flutter_svg_image.dart';
// import 'package:groceryapp/assets/app_colors.dart';
// // import 'package:flutter_svg_image/flutter_svg_image.dart';

// class Login_first_page extends StatefulWidget {
//   const Login_first_page({super.key});

//   @override
//   State<Login_first_page> createState() => _Login_first_pageState();
// }

// class _Login_first_pageState extends State<Login_first_page> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: App_colors.background_color,
//       body: Stack(
//         children: [
//           Positioned(
//               top: 1,
//               child: Image(
//                 image: SvgImage.asset('lib/assets/images/Vector.svg'),
//         )
//         ),Positioned(
//           child: Align(
//             alignment: Alignment.center,
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 96),
//                   child: Text('LogIn',style: TextStyle(fontSize: 28,color: Colors.white,fontWeight: FontWeight.bold),),
//                 ),Padding(
//                   padding: const EdgeInsets.symmetric(horizontal:52,vertical:310 ),

//                   child: Container(
//                      decoration: BoxDecoration(),
//                     child: TextFormField(
                                  
//                       decoration: InputDecoration(border: OutlineInputBorder(
                        
//                       ), focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.blue, width: 2.0),
//                         ),),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           )
//            )
//         ],
//       ),
//     );
//   }
// }
