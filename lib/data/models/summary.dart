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
