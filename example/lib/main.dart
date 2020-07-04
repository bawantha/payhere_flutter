import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payhere_flutter/payhere_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  InitRequest req = InitRequest();
  PHConfigs configs = PHConfigs();
  String responseText="";

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  initPlatformState() {
    // add your merchant ID and Merchant Secret
    req.setMerchantId("1214213"); // Your Merchant PayHere ID
    req.setMerchantSecret(
        "4vRyia7Bbrn4Z8inKJfYnf8LLoQq4WWEG4aF3eBOvZvl");  // Your Merchant secret (Add your app at Settings > Domains & Credentials, to get this))
    req.setCurrency("LKR"); // Currency code LKR/USD/GBP/EUR/AUD
    req.setAmount(1000.00); // Final Amount to be charged
    req.setOrderId("230000123"); // Unique Reference ID
    req.setItemsDescription("Door bell wireless"); // Item description title
    req.setCustom1("This is the custom message 1");
    req.setCustom2("This is the custom message 2");
    req.getCustomer().setFirstName("Saman");
    req.getCustomer().setLastName("Perera");
    req.getCustomer().setEmail("samanp@gmail.com");
    req.getCustomer().setPhone("+94771234567");
    req.getCustomer().getAddress().setAddress("No.1, Galle Road");
    req.getCustomer().getAddress().setCity("Colombo");
    req.getCustomer().getAddress().setCountry("Sri Lanka");

//Optional Params
    req.getCustomer().getDeliveryAddress().setAddress("No.2, Kandy Road");
    req.getCustomer().getDeliveryAddress().setCity("Kadawatha");
    req.getCustomer().getDeliveryAddress().setCountry("Sri Lanka");

    req
        .getItems()
        .add(Item.create(id: null, name: "demo", quantity: 4, amount: 45.56));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () async {
                  PhResponse response =
                      await PayhereFlutter.oneTimePaymentSandbox(request: req);

                  setState(() {
                    responseText = response.toJson().toString();
                  });
                },
                child: Text("One Time Payment SANDBOX"),
              ),
              Text(responseText)
            ],
          ),
        ),
      ),
    );
  }

}
