import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:groceryapp/components/app_colors.dart';

class custum_container extends StatefulWidget {
  final String text;
  final Function()? onTap;
    const custum_container({super.key, required this.text, this.onTap});

  @override
  State<custum_container> createState() => _custum_containerState();
}

class _custum_containerState extends State<custum_container> {
  @override
  Widget build(BuildContext context) {
    return     Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 43, vertical: 190),
            child: GestureDetector(
              onTap: (){},
              child: Container(
                // margin: EdgeInsets.only(top: 30),
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 1.9,
                  decoration:  BoxDecoration(
                     borderRadius: BorderRadius.circular(30),
                    color:App_colors.button_color,
                  ),
                  child: Center(child: Text(widget.text,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Colors.white),))
                  ),
            )
          );
  }
}