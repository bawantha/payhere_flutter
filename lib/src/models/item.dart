import 'package:json_annotation/json_annotation.dart';


part 'item.g.dart';
@JsonSerializable()
class Item {
  String id;
  String name;
  int quantity;
  double amount;

  Item() ;

  Item.create({String id, String name, int quantity, double amount}) {
    this.id = id;
    this.name = name;
    this.quantity = quantity;
    this.amount = amount;
  }

  String getId() {
    return this.id;
  }

  void setId(String id) {
    this.id = id;
  }

  String getName() {
    return this.name;
  }

  void setName(String name) {
    this.name = name;
  }

  int getQuantity() {
    return this.quantity;
  }

  void setQuantity(int quantity) {
    this.quantity = quantity;
  }

  double getAmount() {
    return this.amount;
  }

  void setAmount(double amount) {
    this.amount = amount;
  }

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
