// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return Customer()
    ..firstName = json['firstName'] as String
    ..lastName = json['lastName'] as String
    ..email = json['email'] as String
    ..phone = json['phone'] as String
    ..address = json['address'] == null
        ? null
        : Address.fromJson(json['address'] as Map<String, dynamic>)
    ..deliveryAddress = json['deliveryAddress'] == null
        ? null
        : Address.fromJson(json['deliveryAddress'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CustomerToJson(Customer instance) {
  final val = <String, dynamic>{
    'firstName': instance.firstName,
    'lastName': instance.lastName,
    'email': instance.email,
    'phone': instance.phone,
    'address': instance.address?.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deliveryAddress', instance.deliveryAddress?.toJson());
  return val;
}
