

class PregnancyStep1Model{



  late String? id;
  final String? pregnancy;
  final String? medications;
  final String? rh;
  final int? motherAge;
  final String? normalPregnancy;
  final String? diseasePregnancy;
  final String? motherPsychology;
  final String? medicationType;



  PregnancyStep1Model({
    this.id,
    this.pregnancy,
    this.medications,
    this.rh,
    this.motherAge,
    this.normalPregnancy,
    this.diseasePregnancy,
    this.motherPsychology,
    this.medicationType


  });

  factory PregnancyStep1Model.fromJson(Map<String, dynamic> json) => PregnancyStep1Model(
    id: json['id'].toString(),
    pregnancy: json['pregnancy'].toString(),
    medications: json['medications'].toString(),
    rh: json['rh'].toString(),
    motherAge: int.tryParse(json['motherAge'].toString(),),
    normalPregnancy: json['normalPregnancy'].toString(),
    diseasePregnancy: json['diseasePregnancy'].toString(),
    motherPsychology: json['motherPsychology'].toString(),
    medicationType: json['medicationType'].toString(),
    //docsUrls: json['docsUrls'],

  );


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'lastName': pregnancy,
      'city': medications,
      'birthdate': rh,
      'duration':motherAge,
      'address':normalPregnancy,
      'phone':diseasePregnancy,
      'lastInfo':motherPsychology,
      'medicationType':medicationType
    };
  }

}