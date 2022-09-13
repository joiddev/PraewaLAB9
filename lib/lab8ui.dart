import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:FrankShop_application/constants.dart';
import 'package:FrankShop_application/menu.dart';
import 'package:FrankShop_application/models/product.dart';
import 'package:FrankShop_application/screens/product/products_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import './menu.dart';

void main() {
  runApp(FILM());
}

class FILM extends StatelessWidget {
  

 @override
  Widget build(BuildContext context) {

       return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(  
          backgroundColor: Color.fromARGB(255, 216, 126, 212),
          title: Text("Food Menu"), 
        )
       ,
        body: Menu(),
      ),
       );
  }
}
