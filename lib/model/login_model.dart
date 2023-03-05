class LoginResponse {
  LoginResponse({
    required this.status,
    required this.name,
    required this.refresh,
    required this.access,
    required this.message,
    required this.urlId,
  });

  bool status;
  String name;
  String refresh;
  String access;
  String message;
  String urlId;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        status: json["status"],
        name: json["name"],
        refresh: json["refresh"],
        access: json["access"],
        message: json["message"],
        urlId: json["url_id"],
      );
}
