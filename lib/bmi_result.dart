
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class resultscrean extends StatelessWidget {

  int? result;
  bool isMale;
  int? age;
  resultscrean({
    required this.isMale,
    this.age,
    this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'bmi result ',
        ),
      ),
      body:
      Container( color: Colors.black26,
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('GRENDER:${ isMale ?'male':'female'}',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('RESULT:$result',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('age:$age',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
