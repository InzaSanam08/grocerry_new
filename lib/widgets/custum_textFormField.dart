import 'package:flutter/material.dart';

class custum_textFormField extends StatefulWidget {
  final String texthint ;
  final prefixicon;

   const custum_textFormField({super.key, required this.texthint,required this.prefixicon,});

  @override
  State<custum_textFormField> createState() => _custum_textFormFieldState();
}

class _custum_textFormFieldState extends State<custum_textFormField> {



  @override
  Widget build(BuildContext context) {
    return     Container(
      // margin: EdgeInsets.only(top: 30),
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 1.9,
        decoration:  BoxDecoration(
           borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: Center(
          child: TextFormField(
                  obscureText: true ,
            decoration:  InputDecoration(
              
              prefixIcon: widget.prefixicon,
                 
          hintText: widget.texthint ,
          hintStyle: const TextStyle(fontWeight: FontWeight.bold),
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
          
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30)
            ),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ));
  }
}