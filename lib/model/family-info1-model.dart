
class FamilyInfoPart2{



  late String? id;
  final String? motherJob;
  final String? motherHealthReport;
  final bool? haveRelation;
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
    motherJob: json['mother_job'].toString(),
    motherHealthReport: json['mother_health_history'].toString(),
    haveRelation: json['related_by_blood'] ? true : false ,
    siblingsHealth: json['siblings_health_state'].toString(),
    familySocialState: json['family_economic_status'].toString(),
    nbrSiblings:int.tryParse( json['number_of_siblings'].toString(),),
    childNumber: int.parse(json['child_order'].toString(),)

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








