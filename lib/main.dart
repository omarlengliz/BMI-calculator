import 'result.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:  false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch:  const MaterialColor( 
    0xff0a0e21, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch. 
     <int, Color>{ 
      50:  Color(0xff0a0e21 ),//10% 
      100:  Color(0xff0a0e21),//20% 
      200:  Color(0xff0a0e21),//30% 
      300:  Color(0xff0a0e21),//40% 
      400:  Color(0xff0a0e21),//50% 
      500:  Color(0xff0a0e21),//60% 
      600:  Color(0xff0a0e21),//70% 
      700:  Color(0xff0a0e21),//80% 
      800:  Color(0xff0a0e21),//90% 
      900:  Color(0xff0a0e21),//100% 
    }, 
  ) 
,
        canvasColor: const Color(0xff0a0e21),
        sliderTheme: const SliderThemeData(
      trackHeight: 1,

      thumbColor: Color(0xffeb1555),
    activeTrackColor:  Colors.white ,
    inactiveTrackColor: Color(0xff8d8e98),

        ) ,
        iconTheme: IconThemeData(color: Colors.white),
        textTheme: const TextTheme(
          headline2: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
           headline1: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
           headline4: TextStyle(
            
            color: Color(0xff848591),
          )

        )
      ),
      
      home:  const MyHomePage(),
    );
  }
}
