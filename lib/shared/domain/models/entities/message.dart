import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../response/serializers.dart';
import 'entities.dart';

part 'message.g.dart';

abstract class Message implements BaseModel, Built<Message, MessageBuilder> {
  String? get message;
  String? get senderId;
  String? get receiverId;

  Message._();
  factory Message([void Function(MessageBuilder) updates]) = _$Message;

  @override
  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Message.serializer, this)
        as Map<String, dynamic>;
  }

  static Message fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Message.serializer, json) as Message;
  }

  static Serializer<Message> get serializer => _$messageSerializer;
}
