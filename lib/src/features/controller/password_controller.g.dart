// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PasswordController on _PasswordStore, Store {
  late final _$passwordAtom =
      Atom(name: '_PasswordStore.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$isPasswordEightCharacteresAtom =
      Atom(name: '_PasswordStore.isPasswordEightCharacteres', context: context);

  @override
  bool get isPasswordEightCharacteres {
    _$isPasswordEightCharacteresAtom.reportRead();
    return super.isPasswordEightCharacteres;
  }

  @override
  set isPasswordEightCharacteres(bool value) {
    _$isPasswordEightCharacteresAtom
        .reportWrite(value, super.isPasswordEightCharacteres, () {
      super.isPasswordEightCharacteres = value;
    });
  }

  late final _$hasPasswordNumberAtom =
      Atom(name: '_PasswordStore.hasPasswordNumber', context: context);

  @override
  bool get hasPasswordNumber {
    _$hasPasswordNumberAtom.reportRead();
    return super.hasPasswordNumber;
  }

  @override
  set hasPasswordNumber(bool value) {
    _$hasPasswordNumberAtom.reportWrite(value, super.hasPasswordNumber, () {
      super.hasPasswordNumber = value;
    });
  }

  late final _$hasPasswordLowcaseAtom =
      Atom(name: '_PasswordStore.hasPasswordLowcase', context: context);

  @override
  bool get hasPasswordLowcase {
    _$hasPasswordLowcaseAtom.reportRead();
    return super.hasPasswordLowcase;
  }

  @override
  set hasPasswordLowcase(bool value) {
    _$hasPasswordLowcaseAtom.reportWrite(value, super.hasPasswordLowcase, () {
      super.hasPasswordLowcase = value;
    });
  }

  late final _$hasPasswordUppercaseAtom =
      Atom(name: '_PasswordStore.hasPasswordUppercase', context: context);

  @override
  bool get hasPasswordUppercase {
    _$hasPasswordUppercaseAtom.reportRead();
    return super.hasPasswordUppercase;
  }

  @override
  set hasPasswordUppercase(bool value) {
    _$hasPasswordUppercaseAtom.reportWrite(value, super.hasPasswordUppercase,
        () {
      super.hasPasswordUppercase = value;
    });
  }

  late final _$hasPasswordSpecialCharacterAtom = Atom(
      name: '_PasswordStore.hasPasswordSpecialCharacter', context: context);

  @override
  bool get hasPasswordSpecialCharacter {
    _$hasPasswordSpecialCharacterAtom.reportRead();
    return super.hasPasswordSpecialCharacter;
  }

  @override
  set hasPasswordSpecialCharacter(bool value) {
    _$hasPasswordSpecialCharacterAtom
        .reportWrite(value, super.hasPasswordSpecialCharacter, () {
      super.hasPasswordSpecialCharacter = value;
    });
  }

  late final _$_PasswordStoreActionController =
      ActionController(name: '_PasswordStore', context: context);

  @override
  void validatePassword(String value) {
    final _$actionInfo = _$_PasswordStoreActionController.startAction(
        name: '_PasswordStore.validatePassword');
    try {
      return super.validatePassword(value);
    } finally {
      _$_PasswordStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
password: ${password},
isPasswordEightCharacteres: ${isPasswordEightCharacteres},
hasPasswordNumber: ${hasPasswordNumber},
hasPasswordLowcase: ${hasPasswordLowcase},
hasPasswordUppercase: ${hasPasswordUppercase},
hasPasswordSpecialCharacter: ${hasPasswordSpecialCharacter}
    ''';
  }
}
