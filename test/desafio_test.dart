import 'package:desafio/desafio.dart';
import 'package:desafio/src/controller/password_controller.dart';
import 'package:desafio/src/model/password_model.dart';
import 'package:test/test.dart';

void main() {
  final passwordModel = PasswordModel(passwords: [
    "#forTe1",
    "fraca",
  ]);

  final passwordController = PasswordController();
  test('testStrongPasswords', () {
    expect(passwordController.strongPasswords(passwordModel),
        equals(List.from(['#forTe1'])));
  });
}
