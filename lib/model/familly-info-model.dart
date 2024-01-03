
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
    fatherHealthReport: json['father_health_history'].toString(),
    fatherEducation: json['father_educational_level'].toString(),
    fatherAge: json['father_age'].toString(),
    fatherName: json['father_name'].toString(),
    motherEducation: json['mother_educational_level'].toString(),
    motherAge: json['mother_age'].toString(),
    motherName: json['mother_name'].toString(),
    fatherJob: json['father_job'].toString(),


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








