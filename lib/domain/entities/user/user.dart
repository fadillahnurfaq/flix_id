import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

// menggunakan fromJson karena tidak ada nama entitas data yang berbeda antara vscode dan api
@freezed
@JsonSerializable()
class User with _$User {
  @override
  @JsonKey(required: true, name: "uid")
  final String uid;

  @override
  @JsonKey(required: true, name: "email")
  final String email;

  @override
  @JsonKey(required: true, name: "name")
  final String name;

  @override
  @JsonKey(required: false, name: "photo_url")
  final String? photoUrl;

  @override
  @JsonKey(required: false, name: "balance", defaultValue: 0)
  final int balance;

  User({
    required this.uid,
    required this.email,
    required this.name,
    required this.photoUrl,
    this.balance = 0,
  });
  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
  Map<String, Object?> toJson() => _$UserToJson(this);
}
