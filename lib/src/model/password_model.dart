class PasswordModel {
  List<String> passwords;

  PasswordModel({required this.passwords});

  factory PasswordModel.fromMap(Map<String, dynamic> map) {
    return PasswordModel(
      passwords: map['passwords'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "passwords": passwords,
    };
  }
}
