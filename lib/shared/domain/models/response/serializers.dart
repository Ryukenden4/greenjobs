import 'package:built_collection/built_collection.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import '../entities/entities.dart';
import '../entities/review.dart';

part 'serializers.g.dart';

@SerializersFor([
  Job,
  Company,
  User,
  JobStatus,
  JobStatus,
  JobApplicant,
  JobBenefit,
  JobRate,
  JobDuration,
  Review,
])
final Serializers serializers = (_$serializers.toBuilder()

      // Additional serializers
      ..add(Iso8601DateTimeSerializer())

      // Plugins
      ..addPlugin(StandardJsonPlugin()))
    .build();
