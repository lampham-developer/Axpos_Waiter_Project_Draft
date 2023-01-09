class APIError {
  int? errorCode;
  String? errorMessage;

  APIError(this.errorCode, this.errorMessage);

  APIError.fromJson(Map<String, dynamic> map) {
    errorCode = map["code"];
    errorMessage = map["message"];
  }
}
