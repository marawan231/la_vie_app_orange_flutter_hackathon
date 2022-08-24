import 'package:json_annotation/json_annotation.dart';
part 'auth_model.g.dart';



@JsonSerializable(explicitToJson: true)

class AuthModel {
  String? type;
  String? message;
  Data? data;

  AuthModel({this.type, this.message, this.data});
     factory AuthModel.fromJson(Map<String, dynamic> json) => _$AuthModelFromJson(json);
  Map<String, dynamic> toJson() => _$AuthModelToJson(this);



}
@JsonSerializable(explicitToJson: true)

class Data {
  User? user;
  String? accessToken;
  String? refreshToken;

  Data({this.user, this.accessToken, this.refreshToken});


     factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
   Map<String, dynamic> toJson() => _$DataToJson(this);


}
@JsonSerializable(explicitToJson: true)
class User {
  String? userId;
  String? firstName;
  String? lastName;
  String? email;
  String? imageUrl;
  String? address;
  String? role;

  User(
      {this.userId,
      this.firstName,
      this.lastName,
      this.email,
      this.imageUrl,
      this.address,
      this.role});

       

     factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
   Map<String, dynamic> toJson() => _$UserToJson(this);

      

}

