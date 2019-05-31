import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'counter_model.dart';

class IncrementButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<CounterModel>(
      builder: (context, child, model) {
        return RaisedButton(
          color: Colors.blue[400],
          padding: EdgeInsets.symmetric(vertical: 4),
          child: const Icon(Icons.remove , size: 36, color: Colors.white,),
          onPressed: () {
            model.decrement();
          },
        );
      },
    );
  }
}