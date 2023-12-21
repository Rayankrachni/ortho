
class DiseaseModel{



  late String? id;
  final String? meningitis;
  final String? encephalitis;
  final String? developEpilepsyTime;
  final String? seizuresOccurTime ;

  final String? hasTonsillitis;
  final String? takeVaccinations;
  final String? undergoneRegarding ;




  DiseaseModel({
    this.id,
    this.encephalitis,
    this.meningitis,
    this.developEpilepsyTime,
    this.seizuresOccurTime,
    this.undergoneRegarding,
    this.takeVaccinations,
    this.hasTonsillitis,



  });

  factory DiseaseModel.fromJson(Map<String, dynamic> json) => DiseaseModel(
    id: json['id'].toString(),
    meningitis: json['meningitis'].toString(),
    encephalitis: json['encephalitis'].toString(),
    developEpilepsyTime: json['developEpilepsyTime'].toString(),
    seizuresOccurTime: json['seizuresOccurTime'].toString(),
    undergoneRegarding: json['undergoneRegarding'].toString(),
    takeVaccinations: json['takeVaccinations'].toString(),
    hasTonsillitis: json['hasTonsillitis'].toString(),


  );


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'fatherName': encephalitis,
      'meningitis': meningitis,
      'fatherEducation': developEpilepsyTime,
      'fatherHealthReport': seizuresOccurTime,
      'motherName':undergoneRegarding,
      'motherAge':takeVaccinations,
      'motherEducation':hasTonsillitis,

    };
  }

}








