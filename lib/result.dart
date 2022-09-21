import 'package:flutter/material.dart';

class Result extends StatelessWidget {
   const Result({ Key? key, required this.result, required this.isMale, required this.age, required this.height, required this.weight}) : super(key: key);
  final double result ;
  final bool isMale; 
  final int age;
  final double height;
  final int weight;
  String get resultPhase{
      String resultText ="";
      if(result>=30 ) {
        resultText="Obese";
      } else if(result >25 &&  result<30) {
        resultText="Overweight";
      }else if(result >=18.5 &&  result<=24.5) {
        resultText="Normal";
      }else{
        resultText="Thin";
      }
      return resultText;


  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Result"),centerTitle: true,),
      body: SafeArea(child: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:
        [
            Container(
      width: 250.0,
      height: 250.0,
      decoration: const BoxDecoration(
        color: Color(0xffeb1555)
,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50,bottom: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly  ,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                          const Text("BMI" ,style:TextStyle(fontSize: 24,color: Colors.white , fontWeight: FontWeight.bold)),

             Text(" ${result.toStringAsFixed(1 ) } ",style:const TextStyle(fontSize: 64,color: Colors.white)),
                       Text(" $resultPhase  ",style: TextStyle(fontSize: 36 ,color: (resultPhase == "Normal") ?  Color(0xff9BDEAC) :  (resultPhase == "Overweight") ?  Color(0xffF7F5DD) :  Color(0xffE2979C) )),

          ],
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
            Container(
            child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(" ${isMale == true ? 'Male' : 'Female' } " , style:TextStyle(color: Color(0xffffda66), fontWeight: FontWeight.bold,fontSize: 36,)),
                    Text(" Gender " , style:TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold,fontSize: 14,)),

                  ],
                ),
              
           width: 150.0,
        height: 120.0,
        decoration: const BoxDecoration(
          color: Color(0xff202036)
,
          shape: BoxShape.rectangle,
        ))
        ,  Container(
            child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(" $age " , style:const TextStyle(color: Color(0xffffda66), fontWeight: FontWeight.bold,fontSize: 36,)),
                    const Text(" Age " , style:TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold,fontSize: 14,)),

                  ],
                ),
              
       width: 150.0,
        height: 120.0,
        decoration: const BoxDecoration(
          color: Color(0xff202036)
,
          shape: BoxShape.rectangle,
        ))
        ],
      ),
    ),
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
            Container(
               child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(" $height " , style:const TextStyle(color: Color(0xffffda66), fontWeight: FontWeight.bold,fontSize: 36,)),
                    const Text(" cm " , style:TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold,fontSize: 14,)),

                  ],
                ),
        width: 150.0,
        height: 120.0,
        decoration: const BoxDecoration(
          color: Color(0xff202036)
,
          shape: BoxShape.rectangle,
        ))
        ,  Container(
          child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(" $weight " , style:const TextStyle(color: Color(0xffffda66), fontWeight: FontWeight.bold,fontSize: 36,)),
                    const Text(" Kg " , style:TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold,fontSize: 14,)),

                  ],
                ),
        width: 150.0,
        height: 120.0,
        decoration: const BoxDecoration(
          color: Color(0xff202036)
,
          shape: BoxShape.rectangle,
        ))
        ],
    ),
     ),




          // Text("Gender ${isMale == true ? 'Male' : 'Female' } ",style: Theme.of(context).textTheme.headline2),
          //  Text("Result ${result.toStringAsFixed(1 ) } ",style: Theme.of(context).textTheme.headline2),

          // Text("Healthiness $resultPhase  ",style: Theme.of(context).textTheme.headline2),
          // Text("age  $age ",style: Theme.of(context).textTheme.headline2)



        ],


      ),),),
      
    );
  }
}