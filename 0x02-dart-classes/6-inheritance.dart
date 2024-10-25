import '6-password.dart';

class User extends Password {
  String? name;
  int? age;
  double? height;
  int? id;

  User({required this.id, required this.name, required this.age, required this.height, required String user_password})
      : super(password: user_password);

  static User fromJson(Map<String, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
      'user_password': password,
    };
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name, age: $age, height: $height, Password valid: ${isValid()})';
  }
}
