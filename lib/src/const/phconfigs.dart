class PHConfigs {
  static final String LIVE_URL = "https://www.payhere.lk/pay/";
  static final String SANDBOX_URL = "https://sandbox.payhere.lk/pay/";
  static final String CHECKOUT = "checkout";
  static final String STATUS = "order_status";
  String _BASE_URL = null;

  void setBaseUrl(String url) {
    _BASE_URL = url;
  }

  String getBaseUrl() {
    return _BASE_URL;
  }
}
