class PaymentMethodResponse {
  int status;
  String msg;
  Map<String, Data> data;

  PaymentMethodResponse() {}

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

  Map<String, Data> getData() {
    return this.data;
  }

  void setData(Map<String, Data> data) {
    this.data = data;
  }
}

class Size {
  int width;
  int height;

  Size() {}

  int getWidth() {
    return this.width;
  }

  void setWidth(int width) {
    this.width = width;
  }

  int getHeight() {
    return this.height;
  }

  void setHeight(int height) {
    this.height = height;
  }
}

class Data {
  String imageUrl;
  Size viewSize;

  Data() {}

  String getImageUrl() {
    return this.imageUrl;
  }

  void setImageUrl(String imageUrl) {
    this.imageUrl = imageUrl;
  }

  Size getViewSize() {
    return this.viewSize;
  }

  void setViewSize(Size viewSize) {
    this.viewSize = viewSize;
  }
}
