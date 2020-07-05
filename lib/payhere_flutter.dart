import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payhere_flutter/src/models/initRequest.dart';
import 'package:payhere_flutter/src/models/phresponse.dart';

export 'package:payhere_flutter/src/const/phconfigs.dart';
export 'package:payhere_flutter/src/const/phconstants.dart';
export 'package:payhere_flutter/src/models/initRequest.dart';
export 'package:payhere_flutter/src/models/item.dart';
export 'package:payhere_flutter/src/models/phresponse.dart';

class PayhereFlutter {
  static const MethodChannel _channel = const MethodChannel('payhere_flutter');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<PhResponse> oneTimePaymentSandbox(
      {@required InitRequest request}) async {
    Map<String, dynamic> map = request.toJson();
    Map<dynamic, dynamic> response = Map();
    PhResponse phResponse = await _channel
        .invokeMethod('onTimePaymentDemo', map)
        .then(
            (value) => PhResponse.fromJson(json.decode(response['response'])));
    return phResponse;
  }

  static Future<PhResponse> oneTimePaymentReal(
      {@required InitRequest request}) async {
    Map<String, dynamic> map = request.toJson();
    Map<dynamic, dynamic> response = Map();
    PhResponse phResponse = await _channel.invokeMethod(
        'onTimePaymentReal', map).then((value) =>
        PhResponse.fromJson(json.decode(response['response'])));
    return phResponse;
  }
}
