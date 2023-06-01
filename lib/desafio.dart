import 'package:desafio/src/controller/password_controller.dart';
import 'package:desafio/src/model/password_model.dart';

void validPasswords() {
  final passwordModel = PasswordModel(
    passwords: [
      "#forTe1",
      "senhafraca",
      "Qu@s1",
      "Voce@Consegue!2023",
    ],
  );

  final passwordController = PasswordController();

  print(passwordController.strongPasswords(passwordModel));
}
