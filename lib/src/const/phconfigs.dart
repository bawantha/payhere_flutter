class PHConfigs {
  static final String liveUrl = "https://www.payhere.lk/pay/";
  static final String sandBoxUrl = "https://sandbox.payhere.lk/pay/";
  static final String checkout = "checkout";
  static final String status = "order_status";
  String _base_url = null;

  void setBaseUrl(String url) {
    _base_url = url;
  }

  String getBaseUrl() {
    return _base_url;
  }
}
