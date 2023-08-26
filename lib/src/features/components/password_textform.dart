import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
//controller
import '../controller/password_controller.dart';
//utils
import '../../shared/utils/app_color.dart';
class PasswordTextForm extends StatefulWidget {
  const PasswordTextForm({Key? key}) : super(key: key);

  @override
  State<PasswordTextForm> createState() => _PasswordTextFormState();
}

class _PasswordTextFormState extends State<PasswordTextForm> {
  final _textController = TextEditingController();

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
      builder: (_) => TextFormField(
        cursorColor: AppColor.instance.primary,
        decoration: const InputDecoration(
          hintText: 'Senha',
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        ),
        onChanged: (value) => controller.validatePassword(value),
        controller: _textController,
      ),
    );
  }
}