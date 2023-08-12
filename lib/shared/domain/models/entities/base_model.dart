import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:greenjobs/shared/domain/models/entities/user.dart';

part 'base_model.g.dart';

@BuiltValue(instantiable: false)
abstract class BaseModel {
  String? get id;
  @BuiltValueField(wireName: "created_at")
  DateTime? get createdAt;
  @BuiltValueField(wireName: "updated_at")
  DateTime? get updatedAt;

  BaseModel rebuild(void Function(BaseModelBuilder) updates);
  BaseModelBuilder toBuilder();
  Map<String, Object?> toJson();
}

class SyncStatus extends EnumClass {
  static Serializer<SyncStatus> get serializer => _$syncStatusSerializer;

  static const SyncStatus toBeCreated = _$toBeCreated;
  static const SyncStatus toBeUpdated = _$toBeUpdated;
  static const SyncStatus toBeDeleted = _$toBeDeleted;
  static const SyncStatus toBeHardDeleted = _$toBeHardDeleted;
  static const SyncStatus toBeRestored = _$toBeRestored;
  static const SyncStatus synced = _$synced;

  const SyncStatus._(super.name);

  static BuiltSet<SyncStatus> get values => _$values;
  static SyncStatus valueOf(String name) => _$valueOf(name);
}

class BaseModelFields extends EnumClass {
  static const BaseModelFields id = _$id;
  static const BaseModelFields uid = _$uid;
  static const BaseModelFields updated_at = _$updated_at;
  static const BaseModelFields created_at = _$created_at;

  const BaseModelFields._(super.name);

  static BuiltSet<BaseModelFields> get values => _$BaseModelFieldsValues;
  static BaseModelFields valueOf(String name) => _$BaseModelFieldsValueOf(name);

  static Serializer<BaseModelFields> get serializer =>
      _$baseModelFieldsSerializer;
}
