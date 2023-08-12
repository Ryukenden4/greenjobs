// Copyright (C) 2022 MOI Systems SDN. BHD.
// Unauthorized copying of this file, via any medium is strictly prohibited
// Proprietary and confidential
// Written by Danial Hanif <danial@moisystems.com>

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:greenjobs/shared/domain/models/entities/entities.dart';

import '../response/serializers.dart';

part 'user.g.dart';

abstract class User implements BaseModel, Built<User, UserBuilder> {
  String? get name;
  String? get username;
  String? get email;
  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;
  @BuiltValue(wireName: 'avatar_url')
  String? get avatarUrl;
  DateTime? get birthDate;
  BuiltMap<String, JsonObject> get experience;
  BuiltList<Job> get appliedJobs;
  BuiltMap<String, JsonObject> get userData;

  User._();
  factory User([void Function(UserBuilder) updates]) = _$User;

  static User get empty => User((p0) => p0
    ..name = 'Unknown User'
    ..username = 'unknown');

  @override
  Map<String, Object?> toJson() {
    return jsonDecode((jsonEncode(
          (serializers.serializeWith(User.serializer, this)
              as Map<String, Object?>?),
          toEncodable: (nonEncodable) => nonEncodable.toString(),
        ))) ??
        {};
  }

  static User? fromJson(Map<String, Object?> json) {
    return serializers.deserializeWith(User.serializer, json);
  }

  static Serializer<User> get serializer => _$userSerializer;

  /// Convenience getter to determine whether the current user is empty.
  bool get isEmpty => this == User.empty;

  /// Convenience getter to determine whether the current user is not empty.
  bool get isNotEmpty => this != User.empty;
}
