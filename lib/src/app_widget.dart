import 'package:desafio_athletic_gear/src/features/controller/password_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//view
import 'features/view/home_view.dart';
//utils
import 'shared/utils/app_theme.dart';

class AthleticGear extends StatelessWidget {
  const AthleticGear({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => PasswordController(),
      child: MaterialApp(
        title: 'Athletic Gear',
        theme: AppTheme.theme,
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
