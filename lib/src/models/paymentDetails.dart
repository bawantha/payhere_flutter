class PaymentDetails {
  String _merchantId;
  String _returnUrl;
  String _cancelUrl;
  String _notifyUrl;
  String _firstName;
  String _lastName;
  String _email;
  String _phone;
  String _address;
  String _city;
  String _country;
  String _orderId;
  String _itemsDescription;
  Map<String, String> _itemsMap;
  String _currency;
  double _amount;
  String _deliveryAddress;
  String _deliveryCity;
  String _deliveryCountry;
  String _platform;
  String _custom1;
  String _custom2;
  double _startupFee;
  String _recurrence;
  String _duration;
  String _referer;
  String _hash;
  String _method;
  bool _auto;

  PaymentDetails() ;

  String getMerchantId() {
    return this._merchantId;
  }

  void setMerchantId(String merchantId) {
    this._merchantId = merchantId;
  }

  String getReturnUrl() {
    return this._returnUrl;
  }

  void setReturnUrl(String returnUrl) {
    this._returnUrl = returnUrl;
  }

  String getCancelUrl() {
    return this._cancelUrl;
  }

  void setCancelUrl(String cancelUrl) {
    this._cancelUrl = cancelUrl;
  }

  String getNotifyUrl() {
    return this._notifyUrl;
  }

  void setNotifyUrl(String notifyUrl) {
    this._notifyUrl = notifyUrl;
  }

  String getFirstName() {
    return this._firstName;
  }

  void setFirstName(String firstName) {
    this._firstName = firstName;
  }

  String getLastName() {
    return this._lastName;
  }

  void setLastName(String lastName) {
    this._lastName = lastName;
  }

  String getEmail() {
    return this._email;
  }

  void setEmail(String email) {
    this._email = email;
  }

  String getPhone() {
    return this._phone;
  }

  void setPhone(String phone) {
    this._phone = phone;
  }

  String getAddress() {
    return this._address;
  }

  void setAddress(String address) {
    this._address = address;
  }

  String getCity() {
    return this._city;
  }

  void setCity(String city) {
    this._city = city;
  }

  String getCountry() {
    return this._country;
  }

  void setCountry(String country) {
    this._country = country;
  }

  String getOrderId() {
    return this._orderId;
  }

  void setOrderId(String orderId) {
    this._orderId = orderId;
  }

  String getItemsDescription() {
    return this._itemsDescription;
  }

  void setItemsDescription(String itemsDescription) {
    this._itemsDescription = itemsDescription;
  }

 Map<String, String> getItemsMap() {
    return this._itemsMap;
  }

  void setItemsMap(Map<String, String> itemsMap) {
    this._itemsMap = itemsMap;
  }

  String getCurrency() {
    return this._currency;
  }

  void setCurrency(String currency) {
    this._currency = currency;
  }

  double getAmount() {
    return this._amount;
  }

  void setAmount(double amount) {
    this._amount = amount;
  }

  String getDeliveryAddress() {
    return this._deliveryAddress;
  }

  void setDeliveryAddress(String deliveryAddress) {
    this._deliveryAddress = deliveryAddress;
  }

  String getDeliveryCity() {
    return this._deliveryCity;
  }

  void setDeliveryCity(String deliveryCity) {
    this._deliveryCity = deliveryCity;
  }

  String getDeliveryCountry() {
    return this._deliveryCountry;
  }

  void setDeliveryCountry(String deliveryCountry) {
    this._deliveryCountry = deliveryCountry;
  }

  String getPlatform() {
    return this._platform;
  }

  void setPlatform(String platform) {
    this._platform = platform;
  }

  String getCustom1() {
    return this._custom1;
  }

  void setCustom1(String custom1) {
    this._custom1 = custom1;
  }

  String getCustom2() {
    return this._custom2;
  }

  void setCustom2(String custom2) {
    this._custom2 = custom2;
  }

  double getStartupFee() {
    return this._startupFee;
  }

  void setStartupFee(double startupFee) {
    this._startupFee = startupFee;
  }

  String getRecurrence() {
    return this._recurrence;
  }

  void setRecurrence(String recurrence) {
    this._recurrence = recurrence;
  }

  String getDuration() {
    return this._duration;
  }

  void setDuration(String duration) {
    this._duration = duration;
  }

  String getReferer() {
    return this._referer;
  }

  void setReferer(String referer) {
    this._referer = referer;
  }

  String getHash() {
    return this._hash;
  }

  void setHash(String hash) {
    this._hash = hash;
  }

  String getMethod() {
    return this._method;
  }

  void setMethod(String method) {
    this._method = method;
  }

  bool isAuto() {
    return this._auto;
  }

  void setAuto(bool auto) {
    this._auto = auto;
  }
}
