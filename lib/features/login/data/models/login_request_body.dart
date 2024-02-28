import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_request_body.g.dart';
@JsonSerializable()
class LoginRequestBody{
  final String email;
  @JsonKey(name: "password")
final String pass;

  LoginRequestBody({
    required this.email,
    required this.pass,});

  Map<String,dynamic> toJson() => _$LoginRequestBodyToJson(this);

}