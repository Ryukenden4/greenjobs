import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../response/serializers.dart';
import 'entities.dart';

part 'review.g.dart';

abstract class Review implements BaseModel, Built<Review, ReviewBuilder> {
  String? get title;
  String? get description;
  double? get rating;
  @BuiltValueField(wireName: 'job_id')
  String? get jobId;
  @BuiltValueField(wireName: 'user_id')
  String? get userId;
  @BuiltValueField(wireName: 'company_id')
  String? get companyId;
  User? get user;
  Company? get company;
  Job? get job;

  Review._();
  factory Review([void Function(ReviewBuilder) updates]) = _$Review;

  @override
  Map<String, Object?> toJson() {
    return jsonDecode((jsonEncode(
          (serializers.serializeWith(Review.serializer, this)
              as Map<String, Object?>?),
          toEncodable: (nonEncodable) => nonEncodable.toString(),
        ))) ??
        {};
  }

  static Review? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Review.serializer, json);
  }

  static Serializer<Review> get serializer => _$reviewSerializer;
}
