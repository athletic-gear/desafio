import 'package:desafio_athletic_gear/src/features/controller/password_controller.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  
  test(
      'Quando inicia a aplicação '
      'os criterios de validação estão com "false"', () {
    final controller = PasswordController();

    expect(controller.isPasswordSevenCharacteres, false);
    expect(controller.hasPasswordNumber, false);
    expect(controller.hasPasswordLowcase, false);
    expect(controller.hasPasswordUppercase, false);
    expect(controller.hasPasswordSpecialCharacter, false);

  });

    test(
      'Quando validar uma senha'
      'deve validar cada criterio de forma independente', () {
    final controller = PasswordController();
    controller.validatePassword('#forTe1');
    expect(controller.isPasswordSevenCharacteres, true);
    expect(controller.hasPasswordNumber, true);
    expect(controller.hasPasswordLowcase, true);
    expect(controller.hasPasswordUppercase, true);
    expect(controller.hasPasswordSpecialCharacter, true);
  });


    test(
      'Deve retornar a senha que atende a todos os criterios'
      , () {
    final controller = PasswordController();
    controller.validatePassword('Voce@Consegue!2023');
    expect(controller.isPasswordSevenCharacteres, true);
    expect(controller.hasPasswordNumber, true);
    expect(controller.hasPasswordLowcase, true);
    expect(controller.hasPasswordUppercase, true);
    expect(controller.hasPasswordSpecialCharacter, true);
  });

      test(
      'Deve retornar a senha que não possue numero e nem letra maiúscula'
      , () {
    final controller = PasswordController();
    controller.validatePassword('senhafraca');
    expect(controller.isPasswordSevenCharacteres, true);
    expect(controller.hasPasswordNumber, false);
    expect(controller.hasPasswordLowcase, true);
    expect(controller.hasPasswordUppercase, false);
    expect(controller.hasPasswordSpecialCharacter, false);
  });
}