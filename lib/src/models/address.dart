

import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class Address {
  String address;
  String city;
  String country;

  Address() ;

  String getAddress() {
    return this.address;
  }

  void setAddress(String address) {
    this.address = address;
  }

  String getCity() {
    return this.city;
  }

  void setCity(String city) {
    this.city = city;
  }

  String getCountry() {
    return this.country;
  }

  void setCountry(String country) {
    this.country = country;
  }

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
