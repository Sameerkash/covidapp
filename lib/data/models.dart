class Summary {
  final int total;
  final int confirmedCasesIndian;
  final int confirmedCasesForeign;
  final int discharged;
  final int deaths;
  final int confirmedButLocationUnidentified;
  final String loc;

  Summary({
    this.total, 
    this.confirmedButLocationUnidentified,
    this.confirmedCasesForeign,
    this.confirmedCasesIndian,
    this.discharged,
    this.deaths,
    this.loc,
  });

    factory Summary.fromJson(Map<String, dynamic> json) {
    return Summary(
      total: json['total'] as int,
      confirmedCasesIndian: json['confirmedCasesIndian'] as int,
      confirmedCasesForeign: json['confirmedCasesForeign'] as int,
      discharged:  json['discharged'] as int,
      deaths: json['deaths'] as int,
      confirmedButLocationUnidentified: json['confirmedButLocationUnidentified'] as int,
      loc: json['loc'] as String
    );
  }
}

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
