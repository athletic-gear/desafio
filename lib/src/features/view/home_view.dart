import 'package:desafio_athletic_gear/src/features/components/column_check.dart';
import 'package:flutter/material.dart';
//components
import '../components/formulario.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Athletic Gear'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Verificador de Senha',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 10),
                Text(
                    'Verifique se a sua senha possui os seguintes criterios abaixo',
                    style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(
                  height: 20,
                ),
                const Formulario(),
                const SizedBox(
                  height: 30,
                ),
                const ColumnCheck(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
