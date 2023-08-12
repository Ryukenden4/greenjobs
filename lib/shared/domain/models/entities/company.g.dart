// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Company> _$companySerializer = new _$CompanySerializer();

class _$CompanySerializer implements StructuredSerializer<Company> {
  @override
  final Iterable<Type> types = const [Company, _$Company];
  @override
  final String wireName = 'Company';

  @override
  Iterable<Object?> serialize(Serializers serializers, Company object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'jobs',
      serializers.serialize(object.jobs,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Job)])),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
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
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sector;
    if (value != null) {
      result
        ..add('sector')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.representativeName;
    if (value != null) {
      result
        ..add('representativeName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.representativeEmail;
    if (value != null) {
      result
        ..add('representativeEmail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.representativePhone;
    if (value != null) {
      result
        ..add('representativePhone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.avatarUrl;
    if (value != null) {
      result
        ..add('avatarUrl')
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
  Company deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompanyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sector':
          result.sector = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'representativeName':
          result.representativeName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'representativeEmail':
          result.representativeEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'representativePhone':
          result.representativePhone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'avatarUrl':
          result.avatarUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'jobs':
          result.jobs.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Job)]))!
              as BuiltList<Object?>);
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

class _$Company extends Company {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? location;
  @override
  final String? sector;
  @override
  final String? representativeName;
  @override
  final String? representativeEmail;
  @override
  final String? representativePhone;
  @override
  final String? avatarUrl;
  @override
  final BuiltList<Job> jobs;
  @override
  final String? id;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$Company([void Function(CompanyBuilder)? updates]) =>
      (new CompanyBuilder()..update(updates))._build();

  _$Company._(
      {this.name,
      this.description,
      this.location,
      this.sector,
      this.representativeName,
      this.representativeEmail,
      this.representativePhone,
      this.avatarUrl,
      required this.jobs,
      this.id,
      this.createdAt,
      this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(jobs, r'Company', 'jobs');
  }

  @override
  Company rebuild(void Function(CompanyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompanyBuilder toBuilder() => new CompanyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Company &&
        name == other.name &&
        description == other.description &&
        location == other.location &&
        sector == other.sector &&
        representativeName == other.representativeName &&
        representativeEmail == other.representativeEmail &&
        representativePhone == other.representativePhone &&
        avatarUrl == other.avatarUrl &&
        jobs == other.jobs &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, sector.hashCode);
    _$hash = $jc(_$hash, representativeName.hashCode);
    _$hash = $jc(_$hash, representativeEmail.hashCode);
    _$hash = $jc(_$hash, representativePhone.hashCode);
    _$hash = $jc(_$hash, avatarUrl.hashCode);
    _$hash = $jc(_$hash, jobs.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Company')
          ..add('name', name)
          ..add('description', description)
          ..add('location', location)
          ..add('sector', sector)
          ..add('representativeName', representativeName)
          ..add('representativeEmail', representativeEmail)
          ..add('representativePhone', representativePhone)
          ..add('avatarUrl', avatarUrl)
          ..add('jobs', jobs)
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class CompanyBuilder
    implements Builder<Company, CompanyBuilder>, BaseModelBuilder {
  _$Company? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(covariant String? description) =>
      _$this._description = description;

  String? _location;
  String? get location => _$this._location;
  set location(covariant String? location) => _$this._location = location;

  String? _sector;
  String? get sector => _$this._sector;
  set sector(covariant String? sector) => _$this._sector = sector;

  String? _representativeName;
  String? get representativeName => _$this._representativeName;
  set representativeName(covariant String? representativeName) =>
      _$this._representativeName = representativeName;

  String? _representativeEmail;
  String? get representativeEmail => _$this._representativeEmail;
  set representativeEmail(covariant String? representativeEmail) =>
      _$this._representativeEmail = representativeEmail;

  String? _representativePhone;
  String? get representativePhone => _$this._representativePhone;
  set representativePhone(covariant String? representativePhone) =>
      _$this._representativePhone = representativePhone;

  String? _avatarUrl;
  String? get avatarUrl => _$this._avatarUrl;
  set avatarUrl(covariant String? avatarUrl) => _$this._avatarUrl = avatarUrl;

  ListBuilder<Job>? _jobs;
  ListBuilder<Job> get jobs => _$this._jobs ??= new ListBuilder<Job>();
  set jobs(covariant ListBuilder<Job>? jobs) => _$this._jobs = jobs;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(covariant DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(covariant DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  CompanyBuilder();

  CompanyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _location = $v.location;
      _sector = $v.sector;
      _representativeName = $v.representativeName;
      _representativeEmail = $v.representativeEmail;
      _representativePhone = $v.representativePhone;
      _avatarUrl = $v.avatarUrl;
      _jobs = $v.jobs.toBuilder();
      _id = $v.id;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant Company other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Company;
  }

  @override
  void update(void Function(CompanyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Company build() => _build();

  _$Company _build() {
    _$Company _$result;
    try {
      _$result = _$v ??
          new _$Company._(
              name: name,
              description: description,
              location: location,
              sector: sector,
              representativeName: representativeName,
              representativeEmail: representativeEmail,
              representativePhone: representativePhone,
              avatarUrl: avatarUrl,
              jobs: jobs.build(),
              id: id,
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'jobs';
        jobs.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Company', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
