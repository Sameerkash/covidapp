import './summary.dart';
import './region.dart';

class Data {
  final Summary summary;
  final Region regional;

  Data({this.summary
  ,this.regional
  });
  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
        summary: Summary.fromJson(json['summary']),
        regional: Region.fromJson(json['regional']) 
        );
  }

}