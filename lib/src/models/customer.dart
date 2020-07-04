import 'package:json_annotation/json_annotation.dart';
import 'package:payhere_flutter/src/models/address.dart';

part 'customer.g.dart';

@JsonSerializable(explicitToJson: true)
class Customer {
  String firstName;
  String lastName;
  String email;
  String phone;
  Address address;
  @JsonKey(includeIfNull: false)
  Address deliveryAddress;

  Customer();

  String getFirstName() {
    return this.firstName;
  }

  void setFirstName(String firstName) {
    this.firstName = firstName;
  }

  String getLastName() {
    return this.lastName;
  }

  void setLastName(String lastName) {
    this.lastName = lastName;
  }

  String getEmail() {
    return this.email;
  }

  void setEmail(String email) {
    this.email = email;
  }

  String getPhone() {
    return this.phone;
  }

  void setPhone(String phone) {
    this.phone = phone;
  }

  Address getAddress() {
    if (this.address == null) {
      this.address = new Address();
    }
    return this.address;
  }

  void setAddress(Address address) {
    this.address = address;
  }

  Address getDeliveryAddress() {
    if (this.deliveryAddress == null) {
      this.deliveryAddress = new Address();
    }
    return this.deliveryAddress;
  }

  void setDeliveryAddress(Address deliveryAddress) {
    this.deliveryAddress = deliveryAddress;
  }

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}
