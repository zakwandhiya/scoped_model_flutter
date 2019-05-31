import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'counter_model.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp(
    model: CounterModel(),
  ));
}

class MyApp extends StatelessWidget {
  final CounterModel model;

  const MyApp({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModel<CounterModel>(
      model: model,
      child: MaterialApp(
        debugShowCheckedModeBanner: true,
        title: 'Scoped Model Demo',
        home: HomePage(),
      ),
    );
  }
}

