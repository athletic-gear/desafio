import 'package:desafio_athletic_gear/src/home/widgets/multipass_field.dart';
import 'package:desafio_athletic_gear/src/home/widgets/password_field.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var myTheme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Center(
            child: Image.asset(
              'lib/assets/athletic.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: const Text(
          'Athletic Gear',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: myTheme.appBarTheme.backgroundColor,
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PasswordField(),
            Divider(),
            SizedBox(
              height: 20,
            ),
            MultiPassField(),
          ],
        )),
      ),
    );
  }
}
