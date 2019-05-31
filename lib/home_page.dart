import 'package:flutter/material.dart';
import 'counter_model.dart';
import 'increment_button.dart';
import 'decrement_button.dart';
import 'package:scoped_model/scoped_model.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter :',
              style: TextStyle(fontSize: 30 , color: Colors.grey , fontWeight: FontWeight.w300),
            ),
            ScopedModelDescendant<CounterModel>(
              builder: (context, child, model) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 36),
                    child: Text(
                    model.counter.toString(),
                    style: TextStyle(fontSize: 120 , color: Colors.grey , fontWeight: FontWeight.w300),
                  ),
                );
                 
              },
            ),
            

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                IncrementButton(),

                SizedBox(width: 48,),

                DecrementButton()
                
                
              ],
            ),
          ],
        ),
      ),
    );
  }
} 