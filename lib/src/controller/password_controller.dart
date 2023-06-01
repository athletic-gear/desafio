import 'package:desafio/src/model/password_model.dart';

abstract class IPasswordController {
  List<String?> strongPasswords(PasswordModel passwordModel);
}

class PasswordController implements IPasswordController {
  @override
  List<String?> strongPasswords(PasswordModel passwordModel) {
    List<String> list = [];
    final regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{7,}$');

    List.generate(
        passwordModel.passwords.length,
        (index) =>
            list.add(regex.stringMatch(passwordModel.passwords[index]) ?? "0"));

    return list.where((element) => element != "0").toList();
  }
}
