import 'package:payhere_flutter/src/models/initBaseRequest.dart';

class InitRequest extends InitBaseRequest {
  double amount;
  String recurrence;
  String duration;
  double startupFee;

  InitRequest() {}

  double getAmount() {
    return this.amount;
  }

  void setAmount(double amount) {
    this.amount = amount;
  }

  String getRecurrence() {
    return this.recurrence;
  }

  void setRecurrence(String recurrence) {
    this.recurrence = recurrence;
  }

  String getDuration() {
    return this.duration;
  }

  void setDuration(String duration) {
    this.duration = duration;
  }

  double getStartupFee() {
    return this.startupFee;
  }

  void setStartupFee(double startupFee) {
    this.startupFee = startupFee;
  }

  Map<dynamic, dynamic> toMap() {
    Map m = {};
    m['merchantId'] =
        getMerchantId() ?? ArgumentError("merchantId is required");
    m['merchantSecret'] =
        getMerchantSecret() ?? ArgumentError("merchantSecret is required");
    m['currency'] = getCurrency() ?? ArgumentError("currency is required");
    m['amount'] = getAmount() ?? ArgumentError("amount is required");
    m['orderId'] = getOrderId() ?? ArgumentError("orderId is required");
    m['itemsDescription'] =
        getItemsDescription() ?? ArgumentError("itemsDescription is required");
    m['custom1'] = getCustom1() ?? ArgumentError("custom1 is required");
    m['custom2'] = getCustom2() ?? ArgumentError("custom2 is required");
    m['firstName'] =
        getCustomer().getFirstName() ?? ArgumentError("firstName is required");
    m['lastName'] =
        getCustomer().getLastName() ?? ArgumentError("lastName is required");
    m['email'] = getCustomer().getEmail() ?? ArgumentError("email is required");
    m['phone'] = getCustomer().getPhone() ?? ArgumentError("phone is required");
    m['address'] = getCustomer().getAddress().getAddress() ??
        ArgumentError("address is required");
    m['city'] = getCustomer().getAddress().getCity() ??
        ArgumentError("city is required");
    m['country'] = getCustomer().getAddress().getCountry() ??
        ArgumentError("country is required");
    //Optional Params
    m['deliveryAddress'] = getCustomer().getDeliveryAddress().address ?? "N/A";
    m['deliveryAddressCity'] = getCustomer().getDeliveryAddress().city ?? "N/A";
    m['deliveryAddressCountry'] =
        getCustomer().getDeliveryAddress().country ?? "N/A";

    return m;
  }
}
