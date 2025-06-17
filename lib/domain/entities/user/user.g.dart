// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['uid', 'email', 'name']);
  return User(
    uid: json['uid'] as String,
    email: json['email'] as String,
    name: json['name'] as String,
    photoUrl: json['photo_url'] as String?,
    balance: (json['balance'] as num?)?.toInt() ?? 0,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'uid': instance.uid,
  'email': instance.email,
  'name': instance.name,
  'photo_url': instance.photoUrl,
  'balance': instance.balance,
};
