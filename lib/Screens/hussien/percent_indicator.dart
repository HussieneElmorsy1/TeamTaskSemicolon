import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //
            //percent indicator
            //
            CircularPercentIndicator(
              animation: true,
              animationDuration: 2000,
              radius: 150,
              lineWidth: 30,
              percent: 0.75,
              progressColor: Colors.green,
              circularStrokeCap: CircularStrokeCap.round,
              backgroundColor: Colors.white,
              center: Text(
                '75%',
                style: TextStyle(fontSize: 50, color: Colors.green.withOpacity(0.9),fontWeight: FontWeight.bold),
              ),
            ),
            //
            //
            SizedBox(height: 50,),
            //
            //
            LinearPercentIndicator(
                animation: true,
                animationDuration: 2000,
                lineHeight: 25.0,
                percent: 0.3,
                backgroundColor: Colors.white,
                progressColor: Colors.green,
                barRadius: Radius.circular(25),
                // width: 140.0,
              ),
              
          ],
        ),
      ),
    );
  }
}
