// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data()
    ..currency = json['currency'] as String
    ..message = json['message'] as String
    ..paymentNo = json['paymentNo'] as int
    ..price = json['price'] as int
    ..sign = json['sign'] as String
    ..status = json['status'] as int;
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'currency': instance.currency,
      'message': instance.message,
      'paymentNo': instance.paymentNo,
      'price': instance.price,
      'sign': instance.sign,
      'status': instance.status,
    };
