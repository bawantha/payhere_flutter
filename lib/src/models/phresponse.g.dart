// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhResponse _$PhResponseFromJson(Map<String, dynamic> json) {
  return PhResponse()
    ..data = json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>)
    ..message = json['message'] as String
    ..status = json['status'] as int;
}

Map<String, dynamic> _$PhResponseToJson(PhResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  val['message'] = instance.message;
  val['status'] = instance.status;
  return val;
}
