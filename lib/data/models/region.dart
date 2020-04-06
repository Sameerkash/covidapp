import './summary.dart';

class Region {
  final List<Summary> regions;

  Region({this.regions});

  factory Region.fromJson(List<dynamic> parsedJson) {

    List<Summary> regions = new List<Summary>();
    regions = parsedJson.map((i)=>Summary.fromJson(i)).toList();

    return new Region(
      regions: regions
    );
  }
}