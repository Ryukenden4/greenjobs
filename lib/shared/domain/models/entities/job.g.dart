// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const JobBenefit _$food = const JobBenefit._('food');
const JobBenefit _$accomodation = const JobBenefit._('accomodation');
const JobBenefit _$transport = const JobBenefit._('transport');
const JobBenefit _$uniform = const JobBenefit._('uniform');

JobBenefit _$jobBenefitValueOf(String name) {
  switch (name) {
    case 'food':
      return _$food;
    case 'accomodation':
      return _$accomodation;
    case 'transport':
      return _$transport;
    case 'uniform':
      return _$uniform;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<JobBenefit> _$jobBenefitValues =
    new BuiltSet<JobBenefit>(const <JobBenefit>[
  _$food,
  _$accomodation,
  _$transport,
  _$uniform,
]);

const JobRate _$onetime = const JobRate._('onetime');
const JobRate _$hourly = const JobRate._('hourly');
const JobRate _$daily = const JobRate._('daily');
const JobRate _$weekly = const JobRate._('weekly');
const JobRate _$monthly = const JobRate._('monthly');

JobRate _$jobRateValueOf(String name) {
  switch (name) {
    case 'onetime':
      return _$onetime;
    case 'hourly':
      return _$hourly;
    case 'daily':
      return _$daily;
    case 'weekly':
      return _$weekly;
    case 'monthly':
      return _$monthly;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<JobRate> _$jobRateValues = new BuiltSet<JobRate>(const <JobRate>[
  _$onetime,
  _$hourly,
  _$daily,
  _$weekly,
  _$monthly,
]);

const JobDuration _$short_term = const JobDuration._('short_term');
const JobDuration _$long_term = const JobDuration._('long_term');

JobDuration _$jobDurationValueOf(String name) {
  switch (name) {
    case 'short_term':
      return _$short_term;
    case 'long_term':
      return _$long_term;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<JobDuration> _$jobDurationValues =
    new BuiltSet<JobDuration>(const <JobDuration>[
  _$short_term,
  _$long_term,
]);

const JobStatus _$applied = const JobStatus._('applied');
const JobStatus _$cancelled = const JobStatus._('cancelled');
const JobStatus _$hired = const JobStatus._('hired');
const JobStatus _$rejected = const JobStatus._('rejected');
const JobStatus _$started = const JobStatus._('started');
const JobStatus _$finished = const JobStatus._('finished');
const JobStatus _$approved = const JobStatus._('approved');
const JobStatus _$completed = const JobStatus._('completed');

JobStatus _$jobStatusValueOf(String name) {
  switch (name) {
    case 'applied':
      return _$applied;
    case 'cancelled':
      return _$cancelled;
    case 'hired':
      return _$hired;
    case 'rejected':
      return _$rejected;
    case 'started':
      return _$started;
    case 'finished':
      return _$finished;
    case 'approved':
      return _$approved;
    case 'completed':
      return _$completed;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<JobStatus> _$jobStatusValues =
    new BuiltSet<JobStatus>(const <JobStatus>[
  _$applied,
  _$cancelled,
  _$hired,
  _$rejected,
  _$started,
  _$finished,
  _$approved,
  _$completed,
]);

const JobPaymentStatus _$pending = const JobPaymentStatus._('pending');
const JobPaymentStatus _$paid = const JobPaymentStatus._('paid');

JobPaymentStatus _$jobPaymentStatusValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$pending;
    case 'paid':
      return _$paid;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<JobPaymentStatus> _$jobPaymentStatusValues =
    new BuiltSet<JobPaymentStatus>(const <JobPaymentStatus>[
  _$pending,
  _$paid,
]);

Serializer<JobBenefit> _$jobBenefitSerializer = new _$JobBenefitSerializer();
Serializer<JobRate> _$jobRateSerializer = new _$JobRateSerializer();
Serializer<JobDuration> _$jobDurationSerializer = new _$JobDurationSerializer();
Serializer<Job> _$jobSerializer = new _$JobSerializer();
Serializer<JobApplicant> _$jobApplicantSerializer =
    new _$JobApplicantSerializer();
Serializer<JobStatus> _$jobStatusSerializer = new _$JobStatusSerializer();
Serializer<JobPaymentStatus> _$jobPaymentStatusSerializer =
    new _$JobPaymentStatusSerializer();
Serializer<JobPayment> _$jobPaymentSerializer = new _$JobPaymentSerializer();
Serializer<JobPostingPayment> _$jobPostingPaymentSerializer =
    new _$JobPostingPaymentSerializer();

class _$JobBenefitSerializer implements PrimitiveSerializer<JobBenefit> {
  @override
  final Iterable<Type> types = const <Type>[JobBenefit];
  @override
  final String wireName = 'JobBenefit';

  @override
  Object serialize(Serializers serializers, JobBenefit object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  JobBenefit deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      JobBenefit.valueOf(serialized as String);
}

class _$JobRateSerializer implements PrimitiveSerializer<JobRate> {
  @override
  final Iterable<Type> types = const <Type>[JobRate];
  @override
  final String wireName = 'JobRate';

  @override
  Object serialize(Serializers serializers, JobRate object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  JobRate deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      JobRate.valueOf(serialized as String);
}

class _$JobDurationSerializer implements PrimitiveSerializer<JobDuration> {
  @override
  final Iterable<Type> types = const <Type>[JobDuration];
  @override
  final String wireName = 'JobDuration';

  @override
  Object serialize(Serializers serializers, JobDuration object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  JobDuration deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      JobDuration.valueOf(serialized as String);
}

class _$JobSerializer implements StructuredSerializer<Job> {
  @override
  final Iterable<Type> types = const [Job, _$Job];
  @override
  final String wireName = 'Job';

  @override
  Iterable<Object?> serialize(Serializers serializers, Job object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'image_urls',
      serializers.serialize(object.imageUrls,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.applicationForm;
    if (value != null) {
      result
        ..add('application_form')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltMap,
                const [const FullType(String), const FullType(JsonObject)])));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.salary;
    if (value != null) {
      result
        ..add('salary')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.rate;
    if (value != null) {
      result
        ..add('rate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(JobRate)));
    }
    value = object.duration;
    if (value != null) {
      result
        ..add('duration')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(JobDuration)));
    }
    value = object.sector;
    if (value != null) {
      result
        ..add('sector')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.benefit;
    if (value != null) {
      result
        ..add('benefit')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(JobBenefit)])));
    }
    value = object.startDate;
    if (value != null) {
      result
        ..add('start_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.endDate;
    if (value != null) {
      result
        ..add('end_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.deadlineAt;
    if (value != null) {
      result
        ..add('deadline_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.expiredAt;
    if (value != null) {
      result
        ..add('expired_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.companyId;
    if (value != null) {
      result
        ..add('company_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.company;
    if (value != null) {
      result
        ..add('company')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Company)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  Job deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JobBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'application_form':
          result.applicationForm.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(JsonObject)
              ]))!);
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'salary':
          result.salary = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(JobRate)) as JobRate?;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(JobDuration)) as JobDuration?;
          break;
        case 'sector':
          result.sector = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'benefit':
          result.benefit.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(JobBenefit)]))!
              as BuiltList<Object?>);
          break;
        case 'image_urls':
          result.imageUrls.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'start_date':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'end_date':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'deadline_at':
          result.deadlineAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'expired_at':
          result.expiredAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'company_id':
          result.companyId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'company':
          result.company.replace(serializers.deserialize(value,
              specifiedType: const FullType(Company))! as Company);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
      }
    }

    return result.build();
  }
}

class _$JobApplicantSerializer implements StructuredSerializer<JobApplicant> {
  @override
  final Iterable<Type> types = const [JobApplicant, _$JobApplicant];
  @override
  final String wireName = 'JobApplicant';

  @override
  Iterable<Object?> serialize(Serializers serializers, JobApplicant object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.jobId;
    if (value != null) {
      result
        ..add('jobId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(JobStatus)));
    }
    value = object.companyId;
    if (value != null) {
      result
        ..add('company_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.applicationForm;
    if (value != null) {
      result
        ..add('application_form')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(User)));
    }
    value = object.job;
    if (value != null) {
      result
        ..add('job')
        ..add(serializers.serialize(value, specifiedType: const FullType(Job)));
    }
    value = object.company;
    if (value != null) {
      result
        ..add('company')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Company)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  JobApplicant deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JobApplicantBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'jobId':
          result.jobId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(JobStatus)) as JobStatus?;
          break;
        case 'company_id':
          result.companyId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'application_form':
          result.applicationForm = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(User))! as User);
          break;
        case 'job':
          result.job.replace(serializers.deserialize(value,
              specifiedType: const FullType(Job))! as Job);
          break;
        case 'company':
          result.company.replace(serializers.deserialize(value,
              specifiedType: const FullType(Company))! as Company);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
      }
    }

    return result.build();
  }
}

class _$JobStatusSerializer implements PrimitiveSerializer<JobStatus> {
  @override
  final Iterable<Type> types = const <Type>[JobStatus];
  @override
  final String wireName = 'JobStatus';

  @override
  Object serialize(Serializers serializers, JobStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  JobStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      JobStatus.valueOf(serialized as String);
}

class _$JobPaymentStatusSerializer
    implements PrimitiveSerializer<JobPaymentStatus> {
  @override
  final Iterable<Type> types = const <Type>[JobPaymentStatus];
  @override
  final String wireName = 'JobPaymentStatus';

  @override
  Object serialize(Serializers serializers, JobPaymentStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  JobPaymentStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      JobPaymentStatus.valueOf(serialized as String);
}

class _$JobPaymentSerializer implements StructuredSerializer<JobPayment> {
  @override
  final Iterable<Type> types = const [JobPayment, _$JobPayment];
  @override
  final String wireName = 'JobPayment';

  @override
  Iterable<Object?> serialize(Serializers serializers, JobPayment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(JobPaymentStatus)),
    ];
    Object? value;
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jobId;
    if (value != null) {
      result
        ..add('jobId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.companyId;
    if (value != null) {
      result
        ..add('companyId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  JobPayment deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JobPaymentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(JobPaymentStatus))!
              as JobPaymentStatus;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'jobId':
          result.jobId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'companyId':
          result.companyId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
      }
    }

    return result.build();
  }
}

class _$JobPostingPaymentSerializer
    implements StructuredSerializer<JobPostingPayment> {
  @override
  final Iterable<Type> types = const [JobPostingPayment, _$JobPostingPayment];
  @override
  final String wireName = 'JobPostingPayment';

  @override
  Iterable<Object?> serialize(Serializers serializers, JobPostingPayment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(JobPaymentStatus)),
    ];
    Object? value;
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.stripe_payment_id;
    if (value != null) {
      result
        ..add('stripe_payment_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jobId;
    if (value != null) {
      result
        ..add('jobId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.companyId;
    if (value != null) {
      result
        ..add('companyId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  JobPostingPayment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JobPostingPaymentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(JobPaymentStatus))!
              as JobPaymentStatus;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'stripe_payment_id':
          result.stripe_payment_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'jobId':
          result.jobId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'companyId':
          result.companyId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
      }
    }

    return result.build();
  }
}

class _$Job extends Job {
  @override
  final String? title;
  @override
  final String? description;
  @override
  final BuiltMap<String, JsonObject>? applicationForm;
  @override
  final String? location;
  @override
  final double? salary;
  @override
  final JobRate? rate;
  @override
  final JobDuration? duration;
  @override
  final String? sector;
  @override
  final BuiltList<JobBenefit>? benefit;
  @override
  final BuiltList<String> imageUrls;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final DateTime? deadlineAt;
  @override
  final DateTime? expiredAt;
  @override
  final String? companyId;
  @override
  final Company? company;
  @override
  final String? id;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$Job([void Function(JobBuilder)? updates]) =>
      (new JobBuilder()..update(updates))._build();

  _$Job._(
      {this.title,
      this.description,
      this.applicationForm,
      this.location,
      this.salary,
      this.rate,
      this.duration,
      this.sector,
      this.benefit,
      required this.imageUrls,
      this.startDate,
      this.endDate,
      this.deadlineAt,
      this.expiredAt,
      this.companyId,
      this.company,
      this.id,
      this.createdAt,
      this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(imageUrls, r'Job', 'imageUrls');
  }

  @override
  Job rebuild(void Function(JobBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JobBuilder toBuilder() => new JobBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Job &&
        title == other.title &&
        description == other.description &&
        applicationForm == other.applicationForm &&
        location == other.location &&
        salary == other.salary &&
        rate == other.rate &&
        duration == other.duration &&
        sector == other.sector &&
        benefit == other.benefit &&
        imageUrls == other.imageUrls &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        deadlineAt == other.deadlineAt &&
        expiredAt == other.expiredAt &&
        companyId == other.companyId &&
        company == other.company &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, applicationForm.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, salary.hashCode);
    _$hash = $jc(_$hash, rate.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, sector.hashCode);
    _$hash = $jc(_$hash, benefit.hashCode);
    _$hash = $jc(_$hash, imageUrls.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, deadlineAt.hashCode);
    _$hash = $jc(_$hash, expiredAt.hashCode);
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, company.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Job')
          ..add('title', title)
          ..add('description', description)
          ..add('applicationForm', applicationForm)
          ..add('location', location)
          ..add('salary', salary)
          ..add('rate', rate)
          ..add('duration', duration)
          ..add('sector', sector)
          ..add('benefit', benefit)
          ..add('imageUrls', imageUrls)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('deadlineAt', deadlineAt)
          ..add('expiredAt', expiredAt)
          ..add('companyId', companyId)
          ..add('company', company)
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class JobBuilder implements Builder<Job, JobBuilder>, BaseModelBuilder {
  _$Job? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(covariant String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(covariant String? description) =>
      _$this._description = description;

  MapBuilder<String, JsonObject>? _applicationForm;
  MapBuilder<String, JsonObject> get applicationForm =>
      _$this._applicationForm ??= new MapBuilder<String, JsonObject>();
  set applicationForm(
          covariant MapBuilder<String, JsonObject>? applicationForm) =>
      _$this._applicationForm = applicationForm;

  String? _location;
  String? get location => _$this._location;
  set location(covariant String? location) => _$this._location = location;

  double? _salary;
  double? get salary => _$this._salary;
  set salary(covariant double? salary) => _$this._salary = salary;

  JobRate? _rate;
  JobRate? get rate => _$this._rate;
  set rate(covariant JobRate? rate) => _$this._rate = rate;

  JobDuration? _duration;
  JobDuration? get duration => _$this._duration;
  set duration(covariant JobDuration? duration) => _$this._duration = duration;

  String? _sector;
  String? get sector => _$this._sector;
  set sector(covariant String? sector) => _$this._sector = sector;

  ListBuilder<JobBenefit>? _benefit;
  ListBuilder<JobBenefit> get benefit =>
      _$this._benefit ??= new ListBuilder<JobBenefit>();
  set benefit(covariant ListBuilder<JobBenefit>? benefit) =>
      _$this._benefit = benefit;

  ListBuilder<String>? _imageUrls;
  ListBuilder<String> get imageUrls =>
      _$this._imageUrls ??= new ListBuilder<String>();
  set imageUrls(covariant ListBuilder<String>? imageUrls) =>
      _$this._imageUrls = imageUrls;

  DateTime? _startDate;
  DateTime? get startDate => _$this._startDate;
  set startDate(covariant DateTime? startDate) => _$this._startDate = startDate;

  DateTime? _endDate;
  DateTime? get endDate => _$this._endDate;
  set endDate(covariant DateTime? endDate) => _$this._endDate = endDate;

  DateTime? _deadlineAt;
  DateTime? get deadlineAt => _$this._deadlineAt;
  set deadlineAt(covariant DateTime? deadlineAt) =>
      _$this._deadlineAt = deadlineAt;

  DateTime? _expiredAt;
  DateTime? get expiredAt => _$this._expiredAt;
  set expiredAt(covariant DateTime? expiredAt) => _$this._expiredAt = expiredAt;

  String? _companyId;
  String? get companyId => _$this._companyId;
  set companyId(covariant String? companyId) => _$this._companyId = companyId;

  CompanyBuilder? _company;
  CompanyBuilder get company => _$this._company ??= new CompanyBuilder();
  set company(covariant CompanyBuilder? company) => _$this._company = company;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(covariant DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(covariant DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  JobBuilder();

  JobBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _applicationForm = $v.applicationForm?.toBuilder();
      _location = $v.location;
      _salary = $v.salary;
      _rate = $v.rate;
      _duration = $v.duration;
      _sector = $v.sector;
      _benefit = $v.benefit?.toBuilder();
      _imageUrls = $v.imageUrls.toBuilder();
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _deadlineAt = $v.deadlineAt;
      _expiredAt = $v.expiredAt;
      _companyId = $v.companyId;
      _company = $v.company?.toBuilder();
      _id = $v.id;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant Job other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Job;
  }

  @override
  void update(void Function(JobBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Job build() => _build();

  _$Job _build() {
    _$Job _$result;
    try {
      _$result = _$v ??
          new _$Job._(
              title: title,
              description: description,
              applicationForm: _applicationForm?.build(),
              location: location,
              salary: salary,
              rate: rate,
              duration: duration,
              sector: sector,
              benefit: _benefit?.build(),
              imageUrls: imageUrls.build(),
              startDate: startDate,
              endDate: endDate,
              deadlineAt: deadlineAt,
              expiredAt: expiredAt,
              companyId: companyId,
              company: _company?.build(),
              id: id,
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'applicationForm';
        _applicationForm?.build();

        _$failedField = 'benefit';
        _benefit?.build();
        _$failedField = 'imageUrls';
        imageUrls.build();

        _$failedField = 'company';
        _company?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Job', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$JobApplicant extends JobApplicant {
  @override
  final String? jobId;
  @override
  final String? userId;
  @override
  final JobStatus? status;
  @override
  final String? companyId;
  @override
  final String? applicationForm;
  @override
  final User? user;
  @override
  final Job? job;
  @override
  final Company? company;
  @override
  final String? id;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$JobApplicant([void Function(JobApplicantBuilder)? updates]) =>
      (new JobApplicantBuilder()..update(updates))._build();

  _$JobApplicant._(
      {this.jobId,
      this.userId,
      this.status,
      this.companyId,
      this.applicationForm,
      this.user,
      this.job,
      this.company,
      this.id,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  JobApplicant rebuild(void Function(JobApplicantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JobApplicantBuilder toBuilder() => new JobApplicantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JobApplicant &&
        jobId == other.jobId &&
        userId == other.userId &&
        status == other.status &&
        companyId == other.companyId &&
        applicationForm == other.applicationForm &&
        user == other.user &&
        job == other.job &&
        company == other.company &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jobId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, applicationForm.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, job.hashCode);
    _$hash = $jc(_$hash, company.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JobApplicant')
          ..add('jobId', jobId)
          ..add('userId', userId)
          ..add('status', status)
          ..add('companyId', companyId)
          ..add('applicationForm', applicationForm)
          ..add('user', user)
          ..add('job', job)
          ..add('company', company)
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class JobApplicantBuilder
    implements Builder<JobApplicant, JobApplicantBuilder>, BaseModelBuilder {
  _$JobApplicant? _$v;

  String? _jobId;
  String? get jobId => _$this._jobId;
  set jobId(covariant String? jobId) => _$this._jobId = jobId;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(covariant String? userId) => _$this._userId = userId;

  JobStatus? _status;
  JobStatus? get status => _$this._status;
  set status(covariant JobStatus? status) => _$this._status = status;

  String? _companyId;
  String? get companyId => _$this._companyId;
  set companyId(covariant String? companyId) => _$this._companyId = companyId;

  String? _applicationForm;
  String? get applicationForm => _$this._applicationForm;
  set applicationForm(covariant String? applicationForm) =>
      _$this._applicationForm = applicationForm;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(covariant UserBuilder? user) => _$this._user = user;

  JobBuilder? _job;
  JobBuilder get job => _$this._job ??= new JobBuilder();
  set job(covariant JobBuilder? job) => _$this._job = job;

  CompanyBuilder? _company;
  CompanyBuilder get company => _$this._company ??= new CompanyBuilder();
  set company(covariant CompanyBuilder? company) => _$this._company = company;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(covariant DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(covariant DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  JobApplicantBuilder();

  JobApplicantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jobId = $v.jobId;
      _userId = $v.userId;
      _status = $v.status;
      _companyId = $v.companyId;
      _applicationForm = $v.applicationForm;
      _user = $v.user?.toBuilder();
      _job = $v.job?.toBuilder();
      _company = $v.company?.toBuilder();
      _id = $v.id;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant JobApplicant other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JobApplicant;
  }

  @override
  void update(void Function(JobApplicantBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JobApplicant build() => _build();

  _$JobApplicant _build() {
    _$JobApplicant _$result;
    try {
      _$result = _$v ??
          new _$JobApplicant._(
              jobId: jobId,
              userId: userId,
              status: status,
              companyId: companyId,
              applicationForm: applicationForm,
              user: _user?.build(),
              job: _job?.build(),
              company: _company?.build(),
              id: id,
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'job';
        _job?.build();
        _$failedField = 'company';
        _company?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'JobApplicant', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$JobPayment extends JobPayment {
  @override
  final JobPaymentStatus status;
  @override
  final double? amount;
  @override
  final String? userId;
  @override
  final String? jobId;
  @override
  final String? companyId;
  @override
  final String? id;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$JobPayment([void Function(JobPaymentBuilder)? updates]) =>
      (new JobPaymentBuilder()..update(updates))._build();

  _$JobPayment._(
      {required this.status,
      this.amount,
      this.userId,
      this.jobId,
      this.companyId,
      this.id,
      this.createdAt,
      this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(status, r'JobPayment', 'status');
  }

  @override
  JobPayment rebuild(void Function(JobPaymentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JobPaymentBuilder toBuilder() => new JobPaymentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JobPayment &&
        status == other.status &&
        amount == other.amount &&
        userId == other.userId &&
        jobId == other.jobId &&
        companyId == other.companyId &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, jobId.hashCode);
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JobPayment')
          ..add('status', status)
          ..add('amount', amount)
          ..add('userId', userId)
          ..add('jobId', jobId)
          ..add('companyId', companyId)
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class JobPaymentBuilder
    implements Builder<JobPayment, JobPaymentBuilder>, BaseModelBuilder {
  _$JobPayment? _$v;

  JobPaymentStatus? _status;
  JobPaymentStatus? get status => _$this._status;
  set status(covariant JobPaymentStatus? status) => _$this._status = status;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(covariant double? amount) => _$this._amount = amount;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(covariant String? userId) => _$this._userId = userId;

  String? _jobId;
  String? get jobId => _$this._jobId;
  set jobId(covariant String? jobId) => _$this._jobId = jobId;

  String? _companyId;
  String? get companyId => _$this._companyId;
  set companyId(covariant String? companyId) => _$this._companyId = companyId;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(covariant DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(covariant DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  JobPaymentBuilder();

  JobPaymentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _amount = $v.amount;
      _userId = $v.userId;
      _jobId = $v.jobId;
      _companyId = $v.companyId;
      _id = $v.id;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant JobPayment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JobPayment;
  }

  @override
  void update(void Function(JobPaymentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JobPayment build() => _build();

  _$JobPayment _build() {
    final _$result = _$v ??
        new _$JobPayment._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'JobPayment', 'status'),
            amount: amount,
            userId: userId,
            jobId: jobId,
            companyId: companyId,
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}

class _$JobPostingPayment extends JobPostingPayment {
  @override
  final JobPaymentStatus status;
  @override
  final double? amount;
  @override
  final String? stripe_payment_id;
  @override
  final String? userId;
  @override
  final String? jobId;
  @override
  final String? companyId;
  @override
  final String? id;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$JobPostingPayment(
          [void Function(JobPostingPaymentBuilder)? updates]) =>
      (new JobPostingPaymentBuilder()..update(updates))._build();

  _$JobPostingPayment._(
      {required this.status,
      this.amount,
      this.stripe_payment_id,
      this.userId,
      this.jobId,
      this.companyId,
      this.id,
      this.createdAt,
      this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        status, r'JobPostingPayment', 'status');
  }

  @override
  JobPostingPayment rebuild(void Function(JobPostingPaymentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JobPostingPaymentBuilder toBuilder() =>
      new JobPostingPaymentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JobPostingPayment &&
        status == other.status &&
        amount == other.amount &&
        stripe_payment_id == other.stripe_payment_id &&
        userId == other.userId &&
        jobId == other.jobId &&
        companyId == other.companyId &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, stripe_payment_id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, jobId.hashCode);
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JobPostingPayment')
          ..add('status', status)
          ..add('amount', amount)
          ..add('stripe_payment_id', stripe_payment_id)
          ..add('userId', userId)
          ..add('jobId', jobId)
          ..add('companyId', companyId)
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class JobPostingPaymentBuilder
    implements
        Builder<JobPostingPayment, JobPostingPaymentBuilder>,
        BaseModelBuilder {
  _$JobPostingPayment? _$v;

  JobPaymentStatus? _status;
  JobPaymentStatus? get status => _$this._status;
  set status(covariant JobPaymentStatus? status) => _$this._status = status;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(covariant double? amount) => _$this._amount = amount;

  String? _stripe_payment_id;
  String? get stripe_payment_id => _$this._stripe_payment_id;
  set stripe_payment_id(covariant String? stripe_payment_id) =>
      _$this._stripe_payment_id = stripe_payment_id;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(covariant String? userId) => _$this._userId = userId;

  String? _jobId;
  String? get jobId => _$this._jobId;
  set jobId(covariant String? jobId) => _$this._jobId = jobId;

  String? _companyId;
  String? get companyId => _$this._companyId;
  set companyId(covariant String? companyId) => _$this._companyId = companyId;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(covariant DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(covariant DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  JobPostingPaymentBuilder();

  JobPostingPaymentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _amount = $v.amount;
      _stripe_payment_id = $v.stripe_payment_id;
      _userId = $v.userId;
      _jobId = $v.jobId;
      _companyId = $v.companyId;
      _id = $v.id;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant JobPostingPayment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JobPostingPayment;
  }

  @override
  void update(void Function(JobPostingPaymentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JobPostingPayment build() => _build();

  _$JobPostingPayment _build() {
    final _$result = _$v ??
        new _$JobPostingPayment._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'JobPostingPayment', 'status'),
            amount: amount,
            stripe_payment_id: stripe_payment_id,
            userId: userId,
            jobId: jobId,
            companyId: companyId,
            id: id,
            createdAt: createdAt,
            updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
