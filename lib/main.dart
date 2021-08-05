import 'package:flutter/material.dart';
import 'Botton_bar_screen.dart';
import 'screens/HomeScreen.dart';
import 'screens/login_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final MaterialColor colorCustom = MaterialColor(0xff651CE5, color);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        fontFamily: "Sans serif",
        primarySwatch: colorCustom,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
       initialRoute: LoginScreen.routeName,


      routes: {
        BNbar.routeName:(context) => BNbar(),
        LoginScreen.routeName:(context) => LoginScreen(),

     //   HomeScreen.routeName: (context) => HomeScreen(),
        //ProfileScreen.routeName: (context) => ProfileScreen(),
       // Discover.routeName: (context) => Discover(),


      },
    //  home: BNbar(),

    );
  }
}

















Map<int, Color> color = {
  50: Color.fromRGBO(102, 28, 229, .1),
  100: Color.fromRGBO(102, 28, 229, .2),
  200: Color.fromRGBO(102, 28, 229, .3),
  300: Color.fromRGBO(102, 28, 229, .4),
  400: Color.fromRGBO(102, 28, 229, .5),
  500: Color.fromRGBO(102, 28, 229, .6),
  600: Color.fromRGBO(102, 28, 229, .7),
  700: Color.fromRGBO(102, 28, 229, .8),
  800: Color.fromRGBO(102, 28, 229, .9),
  900: Color.fromRGBO(102, 28, 229, 1),
};
