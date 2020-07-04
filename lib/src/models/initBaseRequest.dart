import 'package:json_annotation/json_annotation.dart';
import 'package:payhere_flutter/src/models/customer.dart';
import 'package:payhere_flutter/src/models/item.dart';

part 'initBaseRequest.g.dart';
@JsonSerializable(explicitToJson: true)
class InitBaseRequest {
  String merchantId;
  String merchantSecret;
  Customer customer;
  String orderId;
  String itemsDescription;
  bool internal = false;
  String custom1;
  String custom2;
  String notifyUrl;
  String cancelUrl;
  String returnUrl;
  List<Item> items;
  String currency;

  InitBaseRequest() ;

  String getMerchantId() {
    return this.merchantId;
  }

  void setMerchantId(String merchantId) {
    this.merchantId = merchantId;
  }

  String getMerchantSecret() {
    return this.merchantSecret;
  }

  void setMerchantSecret(String merchantSecret) {
    this.merchantSecret = merchantSecret;
  }

  Customer getCustomer() {
    if (this.customer == null) {
      this.customer = new Customer();
    }
    return this.customer;
  }

  void setCustomer(Customer customer) {
    this.customer = customer;
  }

  String getOrderId() {
    return this.orderId;
  }

  void setOrderId(String orderId) {
    this.orderId = orderId;
  }

  String getItemsDescription() {
    return this.itemsDescription;
  }

  void setItemsDescription(String itemsDescription) {
    this.itemsDescription = itemsDescription;
  }

  bool isInternal() {
    return this.internal;
  }

  void setInternal(bool internal) {
    this.internal = internal;
  }

  String getCustom1() {
    return this.custom1;
  }

  void setCustom1(String custom1) {
    this.custom1 = custom1;
  }

  String getCustom2() {
    return this.custom2;
  }

  void setCustom2(String custom2) {
    this.custom2 = custom2;
  }

  List<Item> getItems() {
    if (this.items == null) {
      this.items = List();
    }
    return this.items;
  }

  void setItems(List<Item> items) {
    this.items = items;
  }

  String getNotifyUrl() {
    return this.notifyUrl;
  }

  void setNotifyUrl(String notifyUrl) {
    this.notifyUrl = notifyUrl;
  }

  String getCancelUrl() {
    return this.cancelUrl;
  }

  void setCancelUrl(String cancelUrl) {
    this.cancelUrl = cancelUrl;
  }

  String getReturnUrl() {
    return this.returnUrl;
  }

  void setReturnUrl(String returnUrl) {
    this.returnUrl = returnUrl;
  }

  String getCurrency() {
    return this.currency;
  }

  void setCurrency(String currency) {
    this.currency = currency;
  }


  factory InitBaseRequest.fromJson(Map<String, dynamic> json) =>
      _$InitBaseRequestFromJson(json);

  Map<String, dynamic> toJson() => _$InitBaseRequestToJson(this);
}
