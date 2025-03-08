import 'package:flutter/material.dart';

class CsContainer extends StatefulWidget {
  const CsContainer({super.key});

  @override
  State<CsContainer> createState() => _CsContainerState();
}

class _CsContainerState extends State<CsContainer> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SafeArea(child: Center(
  child:Container(
  color: Colors.grey.shade300,
  height: 263,
  width: 219,
  child: Column(
    children: [
      Row(
        // mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
        padding: EdgeInsets.only(top: 14,right: 16),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 28,
              child: Icon(Icons.favorite_border, color: Colors.black),
            ),
          ),
        
        ],
      ),
      // SizedBox(height: 10,),
        const SizedBox(width: 8), // Add some space between the CircleAvatar and the Container
            Expanded(  // Make the Container take remaining space in Row
              child: Container(
                color: Colors.red,
                height: 150,
                width: double.infinity,  // Ensures that it uses the remaining width
              ),
            ),
    ],
  ),
),
),
),
);
}
}

      