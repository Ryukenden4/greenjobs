// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SyncStatus _$toBeCreated = const SyncStatus._('toBeCreated');
const SyncStatus _$toBeUpdated = const SyncStatus._('toBeUpdated');
const SyncStatus _$toBeDeleted = const SyncStatus._('toBeDeleted');
const SyncStatus _$toBeHardDeleted = const SyncStatus._('toBeHardDeleted');
const SyncStatus _$toBeRestored = const SyncStatus._('toBeRestored');
const SyncStatus _$synced = const SyncStatus._('synced');

SyncStatus _$valueOf(String name) {
  switch (name) {
    case 'toBeCreated':
      return _$toBeCreated;
    case 'toBeUpdated':
      return _$toBeUpdated;
    case 'toBeDeleted':
      return _$toBeDeleted;
    case 'toBeHardDeleted':
      return _$toBeHardDeleted;
    case 'toBeRestored':
      return _$toBeRestored;
    case 'synced':
      return _$synced;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SyncStatus> _$values =
    new BuiltSet<SyncStatus>(const <SyncStatus>[
  _$toBeCreated,
  _$toBeUpdated,
  _$toBeDeleted,
  _$toBeHardDeleted,
  _$toBeRestored,
  _$synced,
]);

const BaseModelFields _$id = const BaseModelFields._('id');
const BaseModelFields _$uid = const BaseModelFields._('uid');
const BaseModelFields _$updated_at = const BaseModelFields._('updated_at');
const BaseModelFields _$created_at = const BaseModelFields._('created_at');

BaseModelFields _$BaseModelFieldsValueOf(String name) {
  switch (name) {
    case 'id':
      return _$id;
    case 'uid':
      return _$uid;
    case 'updated_at':
      return _$updated_at;
    case 'created_at':
      return _$created_at;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<BaseModelFields> _$BaseModelFieldsValues =
    new BuiltSet<BaseModelFields>(const <BaseModelFields>[
  _$id,
  _$uid,
  _$updated_at,
  _$created_at,
]);

Serializer<SyncStatus> _$syncStatusSerializer = new _$SyncStatusSerializer();
Serializer<BaseModelFields> _$baseModelFieldsSerializer =
    new _$BaseModelFieldsSerializer();

class _$SyncStatusSerializer implements PrimitiveSerializer<SyncStatus> {
  @override
  final Iterable<Type> types = const <Type>[SyncStatus];
  @override
  final String wireName = 'SyncStatus';

  @override
  Object serialize(Serializers serializers, SyncStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  SyncStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SyncStatus.valueOf(serialized as String);
}

class _$BaseModelFieldsSerializer
    implements PrimitiveSerializer<BaseModelFields> {
  @override
  final Iterable<Type> types = const <Type>[BaseModelFields];
  @override
  final String wireName = 'BaseModelFields';

  @override
  Object serialize(Serializers serializers, BaseModelFields object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  BaseModelFields deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BaseModelFields.valueOf(serialized as String);
}

abstract mixin class BaseModelBuilder {
  void replace(BaseModel other);
  void update(void Function(BaseModelBuilder) updates);
  String? get id;
  set id(String? id);

  DateTime? get createdAt;
  set createdAt(DateTime? createdAt);

  DateTime? get updatedAt;
  set updatedAt(DateTime? updatedAt);
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
