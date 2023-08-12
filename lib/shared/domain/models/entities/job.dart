// Copyright (C) 2022 MOI Systems SDN. BHD.
// Unauthorized copying of this file, via any medium is strictly prohibited
// Proprietary and confidential
// Written by Danial Hanif <danial@moisystems.com>

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';

import '../response/serializers.dart';
import 'entities.dart';

part 'job.g.dart';

class JobBenefit extends EnumClass {
  static const JobBenefit food = _$food;
  static const JobBenefit accomodation = _$accomodation;
  static const JobBenefit transport = _$transport;
  static const JobBenefit uniform = _$uniform;

  const JobBenefit._(String name) : super(name);

  static BuiltSet<JobBenefit> get values => _$jobBenefitValues;
  static JobBenefit valueOf(String name) => _$jobBenefitValueOf(name);

  static Serializer<JobBenefit> get serializer => _$jobBenefitSerializer;

  static String serialize(JobBenefit benefit) {
    return serializers.serializeWith(JobBenefit.serializer, benefit) as String;
  }

  static JobBenefit deserialize(String benefit) {
    return serializers.deserializeWith(JobBenefit.serializer, benefit)!;
  }
}

class JobRate extends EnumClass {
  static const JobRate onetime = _$onetime;
  static const JobRate hourly = _$hourly;
  static const JobRate daily = _$daily;
  static const JobRate weekly = _$weekly;
  static const JobRate monthly = _$monthly;

  const JobRate._(String name) : super(name);

  static BuiltSet<JobRate> get values => _$jobRateValues;
  static JobRate valueOf(String name) => _$jobRateValueOf(name);

  static Serializer<JobRate> get serializer => _$jobRateSerializer;

  static String serialize(JobRate rate) {
    return serializers.serializeWith(JobRate.serializer, rate) as String;
  }

  static JobRate deserialize(String rate) {
    return serializers.deserializeWith(JobRate.serializer, rate)!;
  }
}

class JobDuration extends EnumClass {
  static const JobDuration short_term = _$short_term;
  static const JobDuration long_term = _$long_term;

  const JobDuration._(String name) : super(name);

  static BuiltSet<JobDuration> get values => _$jobDurationValues;
  static JobDuration valueOf(String name) => _$jobDurationValueOf(name);

  static Serializer<JobDuration> get serializer => _$jobDurationSerializer;

  static String serialize(JobDuration duration) {
    return serializers.serializeWith(JobDuration.serializer, duration)
        as String;
  }

  static JobDuration deserialize(String duration) {
    return serializers.deserializeWith(JobDuration.serializer, duration)!;
  }
}

abstract class Job implements BaseModel, Built<Job, JobBuilder> {
  String? get title;
  String? get description;
  @BuiltValueField(wireName: 'application_form')
  BuiltMap<String, JsonObject>? get applicationForm;
  String? get location;
  double? get salary;
  JobRate? get rate;
  JobDuration? get duration;
  String? get sector;
  BuiltList<JobBenefit>? get benefit;
  @BuiltValueField(wireName: 'image_urls')
  BuiltList<String> get imageUrls;
  @BuiltValueField(wireName: 'start_date')
  DateTime? get startDate;
  @BuiltValueField(wireName: 'end_date')
  DateTime? get endDate;
  @BuiltValueField(wireName: 'deadline_at')
  DateTime? get deadlineAt;
  @BuiltValueField(wireName: 'expired_at')
  DateTime? get expiredAt;
  @BuiltValueField(wireName: 'company_id')
  String? get companyId;
  Company? get company;

  Job._();
  factory Job([void Function(JobBuilder) updates]) = _$Job;

  @override
  Map<String, Object?> toJson() {
    return jsonDecode((jsonEncode(
          (serializers.serializeWith(Job.serializer, this)
              as Map<String, Object?>?),
          toEncodable: (nonEncodable) => nonEncodable.toString(),
        ))) ??
        {};
  }

  static Job? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Job.serializer, json);
  }

  static Serializer<Job> get serializer => _$jobSerializer;
}

abstract class JobApplicant
    implements BaseModel, Built<JobApplicant, JobApplicantBuilder> {
  String? get jobId;
  String? get userId;
  JobStatus? get status;
  @BuiltValueField(wireName: 'company_id')
  String? get companyId;
  @BuiltValueField(wireName: 'application_form')
  String? get applicationForm;
  User? get user;
  Job? get job;
  Company? get company;

  JobApplicant._();
  factory JobApplicant([void Function(JobApplicantBuilder) updates]) =
      _$JobApplicant;

  @override
  Map<String, Object?> toJson() {
    return jsonDecode((jsonEncode(
          (serializers.serializeWith(JobApplicant.serializer, this)
              as Map<String, Object?>?),
          toEncodable: (nonEncodable) => nonEncodable.toString(),
        ))) ??
        {};
  }

  static JobApplicant? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(JobApplicant.serializer, json);
  }

  static Serializer<JobApplicant> get serializer => _$jobApplicantSerializer;
}

class JobStatus extends EnumClass {
  static const JobStatus applied = _$applied;
  static const JobStatus cancelled = _$cancelled;
  static const JobStatus hired = _$hired;
  static const JobStatus rejected = _$rejected;
  static const JobStatus started = _$started;
  static const JobStatus finished = _$finished;
  static const JobStatus approved = _$approved;
  static const JobStatus completed = _$completed;

  const JobStatus._(String name) : super(name);

  static BuiltSet<JobStatus> get values => _$jobStatusValues;
  static JobStatus valueOf(String name) => _$jobStatusValueOf(name);

  static Serializer<JobStatus> get serializer => _$jobStatusSerializer;

  static String serialize(JobStatus status) {
    return serializers.serializeWith(JobStatus.serializer, status) as String;
  }

  static JobStatus deserialize(String status) {
    return serializers.deserializeWith(JobStatus.serializer, status)!;
  }
}

class JobPaymentStatus extends EnumClass {
  static const JobPaymentStatus pending = _$pending;
  static const JobPaymentStatus paid = _$paid;

  const JobPaymentStatus._(String name) : super(name);

  static BuiltSet<JobPaymentStatus> get values => _$jobPaymentStatusValues;
  static JobPaymentStatus valueOf(String name) =>
      _$jobPaymentStatusValueOf(name);

  static Serializer<JobPaymentStatus> get serializer =>
      _$jobPaymentStatusSerializer;

  static String serialize(JobPaymentStatus status) {
    return serializers.serializeWith(JobPaymentStatus.serializer, status)
        as String;
  }

  static JobPaymentStatus deserialize(String status) {
    return serializers.deserializeWith(JobPaymentStatus.serializer, status)!;
  }
}

abstract class JobPayment
    implements BaseModel, Built<JobPayment, JobPaymentBuilder> {
  JobPaymentStatus get status;
  double? get amount;
  String? get userId;
  String? get jobId;
  String? get companyId;

  JobPayment._();
  factory JobPayment([void Function(JobPaymentBuilder) updates]) = _$JobPayment;

  @override
  Map<String, Object?> toJson() {
    return jsonDecode((jsonEncode(
          (serializers.serializeWith(JobPayment.serializer, this)
              as Map<String, Object?>?),
          toEncodable: (nonEncodable) => nonEncodable.toString(),
        ))) ??
        {};
  }

  static JobPayment? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(JobPayment.serializer, json);
  }

  static Serializer<JobPayment> get serializer => _$jobPaymentSerializer;
}

abstract class JobPostingPayment
    implements BaseModel, Built<JobPostingPayment, JobPostingPaymentBuilder> {
  JobPaymentStatus get status;
  double? get amount;
  String? get stripe_payment_id;
  String? get userId;
  String? get jobId;
  String? get companyId;

  JobPostingPayment._();
  factory JobPostingPayment([void Function(JobPostingPaymentBuilder) updates]) =
      _$JobPostingPayment;

  @override
  Map<String, Object?> toJson() {
    return jsonDecode((jsonEncode(
          (serializers.serializeWith(JobPostingPayment.serializer, this)
              as Map<String, Object?>?),
          toEncodable: (nonEncodable) => nonEncodable.toString(),
        ))) ??
        {};
  }

  static JobPostingPayment? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(JobPostingPayment.serializer, json);
  }

  static Serializer<JobPostingPayment> get serializer =>
      _$jobPostingPaymentSerializer;
}
