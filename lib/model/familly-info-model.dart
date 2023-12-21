
class FamilyInfoPart1{



  late String? id;
  final String? fatherName;
  final String? fatherAge;
  final String? fatherEducation;
  final String? fatherHealthReport;

  final String? motherName;
  final String? motherAge;
  final String? motherEducation;
  final String? fatherJob;



  FamilyInfoPart1({
    this.id,
    this.fatherName,
    this.fatherAge,
    this.fatherEducation,
    this.fatherHealthReport,
    this.motherName,
    this.motherAge,
    this.motherEducation,
    this.fatherJob


  });

  factory FamilyInfoPart1.fromJson(Map<String, dynamic> json) => FamilyInfoPart1(
    id: json['id'].toString(),
    fatherHealthReport: json['fatherHealthReport'].toString(),
    fatherEducation: json['fatherEducation'].toString(),
    fatherAge: json['fatherAge'].toString(),
    fatherName: json['fatherName'].toString(),
    motherEducation: json['motherEducation'].toString(),
    motherAge: json['motherAge'].toString(),
    motherName: json['motherName'].toString(),
    fatherJob: json['fatherJob'].toString(),


    //docsUrls: json['docsUrls'],

  );


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'fatherName': fatherName,
      'fatherAge': fatherAge,
      'fatherEducation': fatherEducation,
      'fatherHealthReport': fatherHealthReport,
      'motherName':motherName,
      'motherAge':motherAge,
      'motherEducation':motherEducation,
      'fatherJob':fatherJob
    };
  }

}








