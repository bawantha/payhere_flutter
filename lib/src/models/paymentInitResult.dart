class PaymentInitResult {
  int status;
  String msg;
  Data data;

  PaymentInitResult() {}

  int getStatus() {
    return this.status;
  }

  void setStatus(int status) {
    this.status = status;
  }

  String getMsg() {
    return this.msg;
  }

  void setMsg(String msg) {
    this.msg = msg;
  }

  Data getData() {
    return this.data;
  }

  void setData(Data data) {
    this.data = data;
  }
}

class Data {
  Order order;
  Business business;
  List<String> paymentMethods;
  Redirection redirection;

  Data() {}

  Order getOrder() {
    return this.order;
  }

  void setOrder(Order order) {
    this.order = order;
  }

  Business getBusiness() {
    return this.business;
  }

  void setBusiness(Business business) {
    this.business = business;
  }

  List<String> getPaymentMethods() {
    return this.paymentMethods;
  }

  void setPaymentMethods(List<String> paymentMethods) {
    this.paymentMethods = paymentMethods;
  }

  Redirection getRedirection() {
    return this.redirection;
  }

  void setRedirection(Redirection redirection) {
    this.redirection = redirection;
  }
}

class Redirection {
  String redirectType;
  String url;

  Redirection() {}

  String getRedirectType() {
    return this.redirectType;
  }

  void setRedirectType(String redirectType) {
    this.redirectType = redirectType;
  }

  String getUrl() {
    return this.url;
  }

  void setUrl(String url) {
    this.url = url;
  }
}

class Business {
  String name;
  String logo;

  Business() {}

  String getName() {
    return this.name;
  }

  void setName(String name) {
    this.name = name;
  }

  String getLogo() {
    return this.logo;
  }

  void setLogo(String logo) {
    this.logo = logo;
  }
}

class Order {
  String orderKey;
  int amount;
  String amountFormatted;
  String currency;
  String currencyFormatted;
  String shortDescription;
  String longDescription;

  Order() {}

  String getOrderKey() {
    return this.orderKey;
  }

  void setOrderKey(String orderKey) {
    this.orderKey = orderKey;
  }

  int getAmount() {
    return this.amount;
  }

  void setAmount(int amount) {
    this.amount = amount;
  }

  String getAmountFormatted() {
    return this.amountFormatted;
  }

  void setAmountFormatted(String amountFormatted) {
    this.amountFormatted = amountFormatted;
  }

  String getCurrency() {
    return this.currency;
  }

  void setCurrency(String currency) {
    this.currency = currency;
  }

  String getCurrencyFormatted() {
    return this.currencyFormatted;
  }

  void setCurrencyFormatted(String currencyFormatted) {
    this.currencyFormatted = currencyFormatted;
  }

  String getShortDescription() {
    return this.shortDescription;
  }

  void setShortDescription(String shortDescription) {
    this.shortDescription = shortDescription;
  }

  String getLongDescription() {
    return this.longDescription;
  }

  void setLongDescription(String longDescription) {
    this.longDescription = longDescription;
  }
}
