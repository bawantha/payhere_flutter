# Payhere plugin for flutter

<p>
    <img src="https://raw.githubusercontent.com/bawantha/payhere_flutter/master/screenshots/0.png" width="180px" height="auto" hspace="20"/>
    <img src="https://raw.githubusercontent.com/bawantha/payhere_flutter/master/screenshots/1.png" width="180px" height="auto" hspace="20"/>
   <img src="https://raw.githubusercontent.com/bawantha/payhere_flutter/master/screenshots/2.png" width="180px" height="auto" hspace="20"/>
    <img src="https://raw.githubusercontent.com/bawantha/payhere_flutter/master/screenshots/3.png" width="180px" height="auto" hspace="20"/>
</p>
A Flutter plugin for making payments via Payhere Payment Gateway

#  💻Installation

Add  this `dependencies` in your app's `pubspec.yaml`

    payhere_flutter: ^0.1.0

# 💰 Making Payments

This plugin mimics the original [payhere android sdk](https://support.payhere.lk/api-&-mobile-sdk/mobile-sdk-for-android) hence making a payment is identical to original sdk 
#### Import package
```dart
import 'package:payhere_flutter/payhere_flutter.dart';
```
***One-time Payment Request***
```
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
```
RaisedButton(  
  onPressed: () async {  
  // SANDBOX 
    PhResponse response =  
        await PayhereFlutter.oneTimePaymentSandbox(request: req);  
  child: Text("One Time Payment SANDBOX"),  
),
```
`PhResponse` is identical to `PHResponse` in Android SDK 


`PhResponse`
| type |name  |description |
|--|--|--|
|`Data`| `data` |includes information about transaction
|`String`|`message` | brief about transaction
|`int` | `status` | Transaction status

### Status
|status|code  |
|--|--|
| STATUS_SUCCESS |  1|
|ERROR_UNKNOWN|-1
|ERROR_DATA| -2
|ERROR_VALIDATION| -3
|ERROR_NETWORK | -4
|ERROR_PAYMENT | -5

### Data
|type|name| description|
|--|--|--|
|`int`|`status`|payment status
|`double` | `paymentNo` | unique payment identifier 
|`String` | `currency` | The unit of currency in which the transaction was made 
|`price` | `price` | Amount of transaction.
| `String`|`sign`| transaction sign key
|`String`| `message` | description about transaction

## Status
|status| code
|--|--|
|INIT|0
|PAYMENT|1
|SUCCESS|2
|FAILED|-2


you can find example code in [here](https://github.com/bawantha/payhere_flutter/tree/master/example)


# 🚀 Release
flutter uses **R8** code shrinker by default if you want to use **R8** you need to add `proguard-rules.pro` to  your flutter app. [more](https://developer.android.com/studio/build/shrink-code)

 1. release with **R8** ( default)
 
	  i.  create `proguard-rules.pro`  under `android>app` and add this
	 
	    -keep class lk.payhere.** { *; }
	    
	  ii.  under `app>build.gradle` add this

```gradle
buildTypes {  
  release {  
  // TODO: Add your own signing config for the release build.  
  // Signing with the debug keys for now, so `flutter run --release` works.  
  
  minifyEnabled true  
  useProguard true  
  proguardFiles getDefaultProguardFile('proguard-android.txt'), 'proguard-rules.pro'  
  signingConfig signingConfigs.debug  
    }  
}
```
 2. without  code shrinking
 
	 run `flutter build --no-shrink`
	 

# 📄 Implementation

| API | Android| iOS
|--|--|--|
| One-time Payment |  ✔️| ❌ |
| Recurring Payment |  ❌| ❌ |
| Pre-approval |  ❌| ❌ |

## ✏️ Contributing, 😞 Issues and 🐛 Bug Reports

The project is open to public contribution. Please feel very free to contribute. Experienced an issue or want to report a bug? Please, [report it here](https://github.com/bawantha/payhere_flutter/issues). Remember to be as descriptive as possible.

##  🚨  Issues /Bugs

 - 0.0.3
  **Android**
	 [Manifest merger failed error](https://stackoverflow.com/questions/28095703/manifest-merger-failed-error)	 
	 add Page maker rule for `AndroidManifest.xml`
	 ```
 <application
	android:name="io.flutter.app.FlutterApplication"  
	android:label="appname"  
	android:icon="@mipmap/ic_launcher"  
	tools:replace="android:label"> // add this
	```

## 😇 Is this useful?

please don't forget to give a little start ⭐ from [here](https://github.com/bawantha/payhere_flutter) and give a 👍 for this.  
