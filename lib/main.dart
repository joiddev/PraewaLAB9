import 'package:flutter/material.dart';
import 'package:FrankShop_application/constants.dart';
import 'package:FrankShop_application/lab8ui.dart';
import 'package:FrankShop_application/menu.dart';
import 'package:FrankShop_application/models/product.dart';
import 'package:FrankShop_application/screens/product/products_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FILM MART',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'FILM MART'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: TabBarView(
          children: [ProductsScreen(), FILM()],
        ),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        bottomNavigationBar: const TabBar(
          // ignore: prefer_const_literals_to_create_immutables
          tabs: [
            Tab(
              text: "PF MART",
            ),
            Tab(
              text: "PF FOOD",
            )
          ],
        ),
      ),
    );
  }
}
