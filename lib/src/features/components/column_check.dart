import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
//componente
import 'check_validator.dart';
//controller
import '../controller/password_controller.dart';

class ColumnCheck extends StatefulWidget {
  const ColumnCheck({Key? key}) : super(key: key);

  @override
  State<ColumnCheck> createState() => _ColumnCheckState();
}

class _ColumnCheckState extends State<ColumnCheck> {
  late final PasswordController controller;

  @override
  void initState() {
    super.initState();
    controller = context.read<PasswordController>();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Column(
        children: <Widget>[
          CheckValidator(
              text: 'Contém 8 caracteres',
              status: controller.isPasswordEightCharacteres),
          const SizedBox(height: 10),
           CheckValidator(
              text: 'Contém letra maiúscula',
              status: controller.hasPasswordUppercase),
          const SizedBox(height: 10),
          
           CheckValidator(
              text: 'Contém letra minúsculas',
              status: controller.hasPasswordLowcase),
          const SizedBox(height: 10),
          
           CheckValidator(
              text: 'Contém pelo menos 1 número',
              status: controller.hasPasswordNumber),
          const SizedBox(height: 10),
           CheckValidator(
              text: 'Contém pelo menos 1 caracter especial',
              status: controller.hasPasswordSpecialCharacter),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
