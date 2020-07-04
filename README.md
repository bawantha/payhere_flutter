# Payhere plugin for flutter

<p>
    <img src="https://raw.githubusercontent.com/bawantha/payhere_flutter/master/screenshots/0.png" width="180px" height="auto" hspace="20"/>
    <img src="https://raw.githubusercontent.com/bawantha/payhere_flutter/master/screenshots/1.png" width="180px" height="auto" hspace="20"/>
   <img src="https://raw.githubusercontent.com/bawantha/payhere_flutter/master/screenshots/2.png" width="180px" height="auto" hspace="20"/>
    <img src="https://raw.githubusercontent.com/bawantha/payhere_flutter/master/screenshots/3.png" width="180px" height="auto" hspace="20"/>
</p>
A Flutter plugin for making payments via Paystack Payment Gateway. Fully supports Android and iOS.

#  💻Installation

Add  this `dependencies` in your app's `pubspec.yml`

    payhere_flutter: ^0.0.1

# 💰 Making Payments

This plugin mimics the original [payhere android sdk](https://support.payhere.lk/api-&-mobile-sdk/mobile-sdk-for-android) hence making a payment is identical to original sdk 
#### Import package
```dart
import 'package:payhere_flutter/payhere_flutter.dart';
```
***One-time Payment Request***
```dart
InitRequest req = new InitRequest();
//Required Params
req.setMerchantId("1210XXX");       // Your Merchant PayHere ID
req.setMerchantSecret("ugknesnvn"); // Your Merchant secret (Add your app at Settings > Domains & Credentials, to get this))
req.setCurrency("LKR");             // Currency code LKR/USD/GBP/EUR/AUD
req.setAmount(1000.00);             // Final Amount to be charged
req.setOrderId("230000123");        // Unique Reference ID
req.setItemsDescription("Door bell wireless");  // Item description title 
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
req.getItems().add(new Item(null, "Door bell wireless", 1, 1000.0));
```
call 	`SANDBOX` or `LIVE` end points with `InitRequest`
```dart
RaisedButton(  
  onPressed: () async {  
  // SANDBOX 
    PhResponse response =  
        await PayhereFlutter.oneTimePaymentSandbox(request: req);  
  child: Text("One Time Payment SANDBOX"),  
),
```
`PhResponse` is identical to `PHResponse` in Android SDK 

you can find example code in [here](https://github.com/bawantha/payhere_flutter/tree/master/example)



# 📄 Implementation

| API | Android| iOS
|--|--|--|
| One-time Payment |  ✔️| ❌ |
| Recurring Payment |  ❌| ❌ |
| Pre-approval |  ❌| ❌ |

## ✏️ Contributing, 😞 Issues and 🐛 Bug Reports

The project is open to public contribution. Please feel very free to contribute. Experienced an issue or want to report a bug? Please, [report it here](https://github.com/bawantha/payhere_flutter/issues). Remember to be as descriptive as possible.

## 😇 Is this useful?

please don't forget to give a little start ⭐ from [here](https://github.com/bawantha/payhere_flutter) and give a 👍 for this.  


