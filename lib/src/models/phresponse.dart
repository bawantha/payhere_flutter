import 'dart:convert';

PhResponse phResponseFromJson(String str) => PhResponse.fromJson(json.decode(str));

String phResponseToJson(PhResponse data) => json.encode(data.toJson());

class PhResponse {
  PhResponse({
    this.data,
    this.message,
    this.status,
  });

  final Data data;
  final String message;
  final int status;

  factory PhResponse.fromJson(Map<String, dynamic> json) => PhResponse(
    data: Data.fromJson(json["data"]),
    message: json["message"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
    "message": message,
    "status": status,
  };
}

class Data {
  Data({
    this.currency,
    this.message,
    this.paymentNo,
    this.price,
    this.sign,
    this.status,
  });

  final String currency;
  final String message;
  final int paymentNo;
  final int price;
  final String sign;
  final int status;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    currency: json["currency"],
    message: json["message"],
    paymentNo: json["paymentNo"],
    price: json["price"],
    sign: json["sign"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "currency": currency,
    "message": message,
    "paymentNo": paymentNo,
    "price": price,
    "sign": sign,
    "status": status,
  };
}