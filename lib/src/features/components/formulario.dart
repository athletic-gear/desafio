import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
//component
import 'password_textform.dart';
//controller
import '../controller/password_controller.dart';

class Formulario extends StatefulWidget {
  const Formulario({Key? key}) : super(key: key);

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final _formKey = GlobalKey<FormState>();
  late final PasswordController controller;

  @override
  void initState(){
    super.initState();
    controller = context.read<PasswordController>();
    controller.initialState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: const PasswordTextForm(),
    );
  }
}
