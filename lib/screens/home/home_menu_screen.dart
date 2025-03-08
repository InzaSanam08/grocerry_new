import 'package:flutter/material.dart';
import 'package:flutter_svg_image/flutter_svg_image.dart';
import 'package:groceryapp/components/app_colors.dart';
import 'package:groceryapp/modal/modal.dart';

class home_menu extends StatefulWidget {
  const home_menu({super.key});

  @override
  State<home_menu> createState() => _home_menuState();
}

class _home_menuState extends State<home_menu> {
  var mqHeight;
  var mqwidth;
  @override
  Widget build(BuildContext context) {
    mqHeight = MediaQuery.of(context).size.height;
    mqwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: App_colors.background_color,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: mqHeight * 0.050),
              child: ListTile(
                leading: Image(
                  image: SvgImage.asset(
                    'lib/assets/images/home_images/bx_menu-alt-left.svg',
                  ),
                  fit: BoxFit.cover,
                ),
                trailing: Image(
                  image: SvgImage.asset(
                    'lib/assets/images/home_images/bxs_cart.svg',
                  ),
                  fit: BoxFit.cover,
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20),
            child: Row(
              children: [
                Text(
                  'Easy Mart',
                  style: TextStyle(
                      fontSize: 28,
                      color: App_colors.button_color,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Container(
              height: 45,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: Icon(
                    Icons.search,
                    color: App_colors.text_color,
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: App_colors.text_color),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: () {},
                      child: const Text(
                        'Fruits',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: InkWell(
                        onTap: () {},
                        child: const Text(
                          'Vegetable',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: InkWell(
                        onTap: () {},
                        child: const Text(
                          ' Diary',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: InkWell(
                        onTap: () {},
                        child: const Text(
                          ' Meat',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 270,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return

                    // ...existing code...
                    Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF383838),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 263,
                    width: 219,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          right: 10,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 17,
                          child: Image.asset(
                            'lib/assets/download.png',
                            height: 130,
                            width: 179,
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: Text(
                            Product.products[index].name,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Text(
                            Product.products[index].price.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
// ...existing code...
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text('Hot Sale',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600)),
          ),
          // GridView(
          //   gridDelegate:
          //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.only(top: 10, left: 20),
          //       child: Container(
          //         decoration: BoxDecoration(
          //           color: Color(0xFF383838),
          //           borderRadius: BorderRadius.circular(10),
          //         ),
          //         height: 263,
          //         width: 219,
          //         child: Stack(
          //           children: [
          //             Positioned(
          //               top: 10,
          //               right: 10,
          //               child: CircleAvatar(
          //                 radius: 20,
          //                 backgroundColor: Colors.white,
          //                 child: Icon(
          //                   Icons.favorite,
          //                   color: Colors.red,
          //                 ),
          //               ),
          //             ),
          //             Positioned(
          //               // top: 10,
          //               // left: 10,
          //               // right: 10,
          //               child: Image.asset(
          //                 'lib/assets/download.png',
          //                 height: 95,
          //                 width: 80.42,
          //               ),
          //             ),
          //             Positioned(
          //               bottom: 10,
          //               left: 7,
          //               child: Text(
          //                 'Apple',
          //                 style: TextStyle(
          //                   color: Colors.white,
          //                   fontSize: 20,
          //                   fontWeight: FontWeight.bold,
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     )
          //   ],
          // )
        ],
      ),
    );
  }
}
