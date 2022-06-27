
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bmi_result.dart';
bool ismale =true;
double hight=0;
double age=20;
double weight=50;

class Bmi extends StatefulWidget {
  @override
  _BmiState createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black87,
        title: Center(
          child: Text(
            'BMI Calculation',
          ),

        ),
      ),

      body: Container(
        color: Colors.black87,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: ()
                        { setState((){
                          ismale=true;
                        });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(10),
                            color: ismale ?Colors.blue: Colors.grey[500],
                          ),
                          child: Column(
                            children: [
                              Icon(Icons.male,size: 70,),
                              SizedBox(height:20),
                              Text(
                                  'MALE',
                                  style:TextStyle(
                                    fontSize: 30,
                                  )) ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            ismale=false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(10),
                            color: !ismale?Colors.blue: Colors.grey[500],
                          ),
                          child: Column(
                            children: [
                              Icon(Icons.female,size: 70, ),
                              SizedBox(height:20),
                              Text(
                                  'FEMALE',
                                  style:TextStyle(
                                    fontSize: 30,
                                  )
                              ) ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                  width:double.infinity,
                  decoration: BoxDecoration(color: Colors.grey[500],
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('HEIGHT',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                          ),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text('${ hight.round()}',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 50,
                              color: Colors.white,
                            ),),
                          Text('cm',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                              color: Colors.white,
                            ),),
                        ],
                      ),
                      Slider(value: hight,max: 220,min: 0.0,
                          onChanged: (value){
                            setState(() {
                              hight=value;

                            });
                          }),
                    ],),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('WEIGHT',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,

                              ),
                            ), Text('${weight.round()}',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w900,

                              ),
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                SizedBox(width: 10,),
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },child: Icon(Icons.remove),mini: true,
                                  heroTag: 'age', ),
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },child: Icon(Icons.add),mini: true,
                                    heroTag: 'age1'),
                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[500],
                        ),),
                    ),
                    SizedBox(width: 20,),

                    Expanded(
                      child: Container(

                        child: Column( mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('AGE',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,

                              ),
                            ), Text('${age.round()}',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w900,

                              ),
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },child: Icon(Icons.remove),mini: true,
                                    heroTag: 'age2'),
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },child: Icon(Icons.add),mini: true,
                                    heroTag: 'age3'),

                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[500],
                        ),),
                    ),

                  ],
                ),
              ),
            ),
            Container( width: double.infinity,height: 60,
                color: Colors.blue,
                child: MaterialButton(onPressed: (){
                  var result=weight/pow(hight/100, 2);
                  print(result.round());
                  Navigator.push(context,
                    MaterialPageRoute(builder:(context)=>resultscrean(
                      isMale: ismale,
                      age: age.round(),
                      result: result.round(),
                    )
                    ),);
                },
                  child: Text(
                    'Calculate',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),))
          ],

        ),
      ),
    );
  }
}
