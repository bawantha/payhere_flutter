// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitRequest _$InitRequestFromJson(Map<String, dynamic> json) {
  return InitRequest()
    ..merchantId = json['merchantId'] as String
    ..merchantSecret = json['merchantSecret'] as String
    ..customer = json['customer'] == null
        ? null
        : Customer.fromJson(json['customer'] as Map<String, dynamic>)
    ..orderId = json['orderId'] as String
    ..itemsDescription = json['itemsDescription'] as String
    ..internal = json['internal'] as bool
    ..custom1 = json['custom1'] as String
    ..custom2 = json['custom2'] as String
    ..notifyUrl = json['notifyUrl'] as String
    ..cancelUrl = json['cancelUrl'] as String
    ..returnUrl = json['returnUrl'] as String
    ..items = (json['items'] as List)
        ?.map(
            (e) => e == null ? null : Item.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..currency = json['currency'] as String
    ..amount = (json['amount'] as num)?.toDouble()
    ..recurrence = json['recurrence'] as String
    ..duration = json['duration'] as String
    ..startupFee = (json['startupFee'] as num)?.toDouble();
}

Map<String, dynamic> _$InitRequestToJson(InitRequest instance) =>
    <String, dynamic>{
      'merchantId': instance.merchantId,
      'merchantSecret': instance.merchantSecret,
      'customer': instance.customer?.toJson(),
      'orderId': instance.orderId,
      'itemsDescription': instance.itemsDescription,
      'internal': instance.internal,
      'custom1': instance.custom1,
      'custom2': instance.custom2,
      'notifyUrl': instance.notifyUrl,
      'cancelUrl': instance.cancelUrl,
      'returnUrl': instance.returnUrl,
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
      'currency': instance.currency,
      'amount': instance.amount,
      'recurrence': instance.recurrence,
      'duration': instance.duration,
      'startupFee': instance.startupFee,
    };
