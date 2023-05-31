import 'package:desafio_athletic_gear/src/utils/password_validator.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  ValueNotifier<String> passwordController = ValueNotifier<String>('');
  ValueNotifier<bool> hasError = ValueNotifier<bool>(true);
  ValueNotifier<Icon> validIcon = ValueNotifier<Icon>(const Icon(Icons.error));

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          onChanged: (value) {
            passwordController.value = value;
            hasError.value = isValidPassword(passwordController.value);
            hasError.value
                ? validIcon.value = const Icon(Icons.check)
                : validIcon.value = const Icon(Icons.error);
          },
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Senha',
            hintText: 'Insira sua senha',
            suffixIcon: ValueListenableBuilder<Icon>(
              valueListenable: validIcon,
              builder: (context, value, child) {
                return value;
              },
            ),
            border: const OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ValueListenableBuilder<String>(
          valueListenable: passwordController,
          builder: (context, value, child) {
            return Column(
              children: [
                Text('Senha Reativa: $value'),
              ],
            );
          },
        ),
        ValueListenableBuilder<bool>(
          valueListenable: hasError,
          builder: (context, value, child) {
            return Column(
              children: [
                Text('Válida: $value'),
              ],
            );
          },
        ),
      ],
    );
  }
}
