import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg_image/flutter_svg_image.dart';
import 'package:groceryapp/assets/app_colors.dart';
import 'package:groceryapp/widgets/custum_containers.dart';
import 'package:groceryapp/widgets/custum_textFormField.dart';

class login2_screen_page extends StatefulWidget {
  const login2_screen_page({super.key});

  @override
  State<login2_screen_page> createState() => _login2_screen_pageState();
}

class _login2_screen_pageState extends State<login2_screen_page> {



  @override
  Widget build(BuildContext context) {

   double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;


    return  Scaffold(
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
                        height: screenheight*0.820,
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
                          'SignUp',
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
                    
                     
                     const Positioned(
                      top: 260,
                      left: 0,
                      right: 0,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: custum_textFormField(
                            texthint: 'Email',
                            prefixicon: Icon(
                              Icons.email,
                              size: 24,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      ),

                      
                      const Positioned(
                      top: 340,
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
                      )





















                    // Password input field
                    , const Positioned(
                      top: 420,
                      left: 0,
                      right: 0,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: custum_textFormField(
                            texthint: 'Confirm Password',
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
                      top: 350,
                      left: 0,
                      right: 0,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: custum_container(
                          text: 'SignUp',
                          onTap: () {
                            
                          },
                        ),
                      ),
                    ),
                 
                
                  const Positioned(
            top: 810,
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