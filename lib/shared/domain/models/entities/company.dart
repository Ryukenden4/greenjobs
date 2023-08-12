// Copyright (C) 2022 MOI Systems SDN. BHD.
// Unauthorized copying of this file, via any medium is strictly prohibited
// Proprietary and confidential
// Written by Danial Hanif <danial@moisystems.com>

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'entities.dart';

import '../response/serializers.dart';

part 'company.g.dart';

abstract class Company implements BaseModel, Built<Company, CompanyBuilder> {
  static Serializer<Company> get serializer => _$companySerializer;

  String? get name;
  String? get description;
  String? get location;
  String? get sector;
  String? get representativeName;
  String? get representativeEmail;
  String? get representativePhone;
  @BuiltValue(wireName: 'avatar_url')
  String? get avatarUrl;
  BuiltList<Job> get jobs;

  factory Company([void Function(CompanyBuilder) updates]) = _$Company;

  Company._();

  static Company get empty => Company((p0) => p0..name = 'Unknown Company');

  @override
  Map<String, Object?> toJson() {
    return jsonDecode((jsonEncode(
          (serializers.serializeWith(Company.serializer, this)
              as Map<String, Object?>?),
          toEncodable: (nonEncodable) => nonEncodable.toString(),
        ))) ??
        {};
  }

  static Company? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Company.serializer, json);
  }
}
