class AddToCart {
  List<dynamic>? data;
  String? message;
  List<dynamic>? error;
  int? status;

  AddToCart({this.data, this.message, this.error, this.status});

  factory AddToCart.fromJson(Map<String, dynamic> json) => AddToCart(
    data: json['data'] as List<dynamic>?,
    message: json['message'] as String?,
    error: json['error'] as List<dynamic>?,
    status: json['status'] as int?,
  );

  Map<String, dynamic> toJson() => {
    'data': data,
    'message': message,
    'error': error,
    'status': status,
  };
}
