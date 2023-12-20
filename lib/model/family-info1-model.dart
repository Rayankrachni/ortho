
class FamilyInfoPart2{



  late String? id;
  final String? motherJob;
  final String? motherHealthReport;
  final String? haveRelation;
  final String? siblingsHealth;
  final String? familySocialState;
  final int? nbrSiblings;
  final int? childNumber;






  FamilyInfoPart2({
    this.id,
    this.motherJob,
    this.motherHealthReport,
    this.haveRelation,
    this.siblingsHealth,
    this.familySocialState,
    this.nbrSiblings,
    this.childNumber,


  });

  factory FamilyInfoPart2.fromJson(Map<String, dynamic> json) => FamilyInfoPart2(
    id: json['id'].toString(),
    motherJob: json['motherJob'].toString(),
    motherHealthReport: json['motherHealthReport'].toString(),
    haveRelation: json['haveRelation'].toString(),
    siblingsHealth: json['siblingsHealth'].toString(),
    familySocialState: json['familySocialState'].toString(),
    nbrSiblings:int.tryParse( json['nbrSiblings'].toString(),),
    childNumber: int.parse(json['childNumber'].toString(),)

    //docsUrls: json['docsUrls'],

  );


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'motherJob': motherJob,
      'motherHealthReport': motherHealthReport,
      'haveRelation':haveRelation ,
      'siblingsHealth': siblingsHealth,
      'familySocialState':familySocialState,
      'nbrSiblings':nbrSiblings,
      'childNumber':childNumber,
    };
  }

}








