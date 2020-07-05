import 'package:json_annotation/json_annotation.dart';
import 'package:payhere_flutter/src/models/data.dart';

part 'phresponse.g.dart';

@JsonSerializable(explicitToJson: true)
class PhResponse {
  PhResponse();

  @JsonKey(includeIfNull: false)
  Data data;
  String message;
  int status;

  factory PhResponse.fromJson(Map<String, dynamic> json) =>
      _$PhResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PhResponseToJson(this);
}
