import 'package:flutter/material.dart';
import 'package:flutter_svg_image/flutter_svg_image.dart';
import 'package:groceryapp/assets/app_colors.dart';

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
          )
        ],
      ),
    );
  }
}
