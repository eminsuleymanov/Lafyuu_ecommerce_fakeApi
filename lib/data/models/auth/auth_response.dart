import 'package:hive/hive.dart';
part 'auth_response.g.dart';


@HiveType(typeId: 0)
class AuthResponse {
  @HiveField(0)
  late String token;

  @HiveField(1)
  late int id;

  @HiveField(2)
  late String fullName;

  @HiveField(3)
  late String email;

    AuthResponse({
        required this.token,
        required this.id,
        required this.fullName,
        required this.email,
    });

    factory AuthResponse.fromJson(Map<String, dynamic> json) => AuthResponse(
        token: json["token"],
        id: json["id"],
        fullName: json["full_name"],
        email: json["email"],
    );

    Map<String, dynamic> toJson() => {
        "token": token,
        "id": id,
        "full_name": fullName,
        "email": email,
    };
}
