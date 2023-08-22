import 'package:flutter/material.dart';
//view
import 'features/view/home_view.dart';

class AthleticGear extends StatelessWidget {
  const AthleticGear({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

