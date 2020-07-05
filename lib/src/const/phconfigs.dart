class PHConfigs {
  static final String liveUrl = "https://www.payhere.lk/pay/";
  static final String sandBoxUrl = "https://sandbox.payhere.lk/pay/";
  static final String checkout = "checkout";
  static final String status = "order_status";
  String _baseUrl = sandBoxUrl;

  void setBaseUrl(String url) {
    _baseUrl = url;
  }

  String getBaseUrl() {
    return _baseUrl;
  }
}
