
import 'dart:math';

import 'package:bmi/result.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    bool isMale=true; 
    double height = 155 ; 
    int weight = 55;
    int age = 18 ;

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
      
        title: const Text("Body Mass Index"),
      ),
      body: SafeArea(
        child: Center(
         
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      E1(context , "male"),
                      const SizedBox(width: 15,),
                      E1(context , "female" ),
                    ],
                  ),
                ),
              ),
              Expanded(
                          child: Padding(
                                                        padding: const EdgeInsets.symmetric(horizontal: 20.0),

                            child: Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color(0xff1d1e33)),
                             child: Column(
                              children: [
                                Text("Height",style: Theme.of(context).textTheme.headline4 ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: [
                                    Text("${height.toStringAsFixed(2)} ",style: Theme.of(context).textTheme.headline1 ,),Text("cm",style: Theme.of(context).textTheme.headline4 ),

                                  ],
                                ),Slider(min: 90 ,max: 220,value: height, onChanged: (newVal){


                                  setState(() {
                                    height=newVal;
                                  });

                                })

                              ],
                             ),
                            ),
                          ),
              ),
              Expanded(
                          child: Padding(
                                                        padding: const EdgeInsets.all( 15.0),

                            child: Row(
                              children: [
                                E2(context , "age"),
                                const SizedBox(width: 15,),
                                E2(context , "weight" ),
                              ],
                            ),
                          ),
              ),
               
              Container(
                color: Color(0xffea1554),
                width: double.infinity,
                height: MediaQuery.of(context).size.height/16,
                child: TextButton(

                       child: Text("Calculate",style: Theme.of(context).textTheme.headline2,),
                       onPressed: (){
                        var result= weight/pow(height/100, 2);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Result(result: result, isMale: isMale, age: age,height: height,weight: weight)));
                       },
                  
                  
                )
                ,
              )
              

          ],
          )
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Expanded E1(BuildContext context , String type) {
    return Expanded
              ( 
                  child:
                 GestureDetector(
                  onTap: () =>
                    setState(() {
                        isMale= type=="male" ? true: false; 

                      
                    }),
                  
                   child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: ((isMale==true && type=="male" ) || (isMale==false && type=="female" )) ? Color(0xffea1554) :Color(0xff1d1e33)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Icon(type=="male" ? Icons.male : Icons.female  , size: 90,),
                            const SizedBox(
                              height: 15,
                 
                            ),Text( type=="male" ? "Male" : "Female",style: Theme.of(context).textTheme.headline2,)
                      ],
                    ),
                   ),
                 )
                 );
  }

  Expanded E2(BuildContext context , String type) {
    return Expanded
              ( 
                  child:
                 GestureDetector(
                  onTap: () =>
                    setState(() {
                        isMale= type=="male" ? true: false; 

                      
                    }),
                  
                   child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0xff1d1e33)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          Text( type=="age" ? "Age" : "Weight",style: Theme.of(context).textTheme.headline2,),
                            const SizedBox(
                              height: 15,
                 
                            ),Text( type=="age" ? "$age" : "$weight",style: Theme.of(context).textTheme.headline1,),
                            Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                FloatingActionButton(backgroundColor: Color(0xFF4c4f5e), heroTag: type=="age" ? "age++" : "weight++", onPressed: (){
                                  setState(() {
                                    type=="age" ? age++ : weight++;
                                  });
                                } , child: Icon(Icons.add),mini: true,),
                                const SizedBox(width: 8.0),
                                FloatingActionButton(backgroundColor: Color(0xFF4c4f5e) , heroTag: type=="age" ? "age--" : "weight--", onPressed:  (){
                                  setState(() {
                                    type=="age" ? age-- : weight-- ;
                                  });
                                }, child: Icon(Icons.remove),mini: true,)

                                
                              ],
                            )
                      ],
                    ),
                   ),
                 )
                 );
  }
}
