class UserModel {
  final String name;
  final String email;
  final String password;
  final String confirmPassword;
  final String height;
  final String lenght;

  UserModel(
      {required this.name,
      required this.email,
      required this.password,
      required this.confirmPassword,
      required this.height,
      required this.lenght});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'Email': email,
      'Name': name,
      'Password': password,
      'confirmPassword':confirmPassword,
      'Height':height,
      'Lenght':lenght
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      confirmPassword: json['confirmPassword'],
      name: json['name'],
      password: json["password"],
      height: json["Height"],
      lenght: json["Lenght"],
      email: json["Email"],
    );
  }
}
