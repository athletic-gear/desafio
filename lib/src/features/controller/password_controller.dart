import 'dart:developer';
import 'package:mobx/mobx.dart';
part 'password_controller.g.dart';

// ignore: library_private_types_in_public_api
class PasswordController = _PasswordStore with _$PasswordController;

abstract class _PasswordStore with Store {
  late List<ReactionDisposer> _disposers;

  @observable
  String password = '';

  //criterios
  @observable
  bool isPasswordEightCharacteres = false;
  @observable
  bool hasPasswordNumber = false;
  @observable
  bool hasPasswordLowcase = false;
  @observable
  bool hasPasswordUppercase = false;
  @observable
  bool hasPasswordSpecialCharacter = false;

  void initialState() {
    _disposers = [
      reaction((_) => password, validatePassword),
    ];
  }

  void dispose() {
    for (final d in _disposers) {
      d();
    }
  }

  @action
  void validatePassword(String value) {
    eightCharacteres(value);
    passwordNumber(value);
    passwordLowcase(value);
    passwordUppercase(value);
    passwordSpecialCharacter(value);
  }

  void eightCharacteres(String value) {
    if (value.length >= 8) {
      isPasswordEightCharacteres = true;
      log(isPasswordEightCharacteres.toString());
    } else {
      isPasswordEightCharacteres = false;
    }
  }

  void passwordNumber(String value) {
    if (value.contains(RegExp(r'[0-9]'))) {
      hasPasswordNumber = true;
    } else {
      hasPasswordNumber = false;
    }
  }

  void passwordLowcase(String value) {
    if (value.contains(RegExp(r'[a-z]'))) {
      hasPasswordLowcase = true;
    } else {
      hasPasswordLowcase = false;
    }
  }

  void passwordUppercase(String value) {
    if (value.contains(RegExp(r'[A-Z]'))) {
      hasPasswordUppercase = true;
    } else {
      hasPasswordUppercase = false;
    }
  }

  void passwordSpecialCharacter(String value) {
    if (value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      hasPasswordSpecialCharacter = true;
    } else {
      hasPasswordSpecialCharacter = false;
    }
  }
}
