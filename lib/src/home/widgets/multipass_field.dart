import 'package:desafio_athletic_gear/src/utils/password_validator.dart';
import 'package:flutter/material.dart';

class MultiPassField extends StatefulWidget {
  const MultiPassField({super.key});

  @override
  State<MultiPassField> createState() => _MultiPassFieldState();
}

class _MultiPassFieldState extends State<MultiPassField> {
  ValueNotifier<String> arrayPassword = ValueNotifier<String>('');
  ValueNotifier<List> validsPassword = ValueNotifier<List>([]);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Array de Senhas - Validador',
              style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            maxLines: null,
            onChanged: (value) {
              arrayPassword.value = value;
              validsPassword.value =
                  validateMultiplePasswords(arrayPassword.value);
            },
            obscureText: false,
            decoration: const InputDecoration(
              labelText: 'Array de Senhas',
              hintText: 'Insira seu Array de Senhas',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ValueListenableBuilder(
            valueListenable: validsPassword,
            builder: (context, value, child) {
              return Text(
                'Senhas válidas: ${value.length}',
                style: Theme.of(context).textTheme.titleLarge,
              );
            },
          ),
          ValueListenableBuilder(
            valueListenable: validsPassword,
            builder: (context, value, child) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: value.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 0.2,
                        color: Colors.deepPurple,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    title: Text(value[index]),
                    trailing: const Icon(Icons.check),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
