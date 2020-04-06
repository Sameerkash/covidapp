import './data.dart';

class Response {
  final bool success;
  final Data data;
  Response({this.success, this.data});

  factory Response.fromJson(Map<String, dynamic> json) {
    return Response(
      success: json['success'] as bool,
      data: Data.fromJson(json['data']),
      );
  }
}
