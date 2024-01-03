
class DiseaseModel{



  late String? id;
  final bool? meningitis;
  final bool? encephalitis;
  final bool? epilepsy;
  final String? firstExperienceSeizures ;

  final String? seizuresTime;
  final bool? sufferFromTonsillitis;
  final bool? vaccinations ;






  DiseaseModel({
    this.id,
    this.encephalitis,
    this.meningitis,
    this.epilepsy,
    this.firstExperienceSeizures,
    this.seizuresTime,
    this.sufferFromTonsillitis,
    this.vaccinations



  });

  factory DiseaseModel.fromJson(Map<String, dynamic> json) => DiseaseModel(
    id: json['id'].toString(),
    meningitis: json['meningitis']  == 1 ? true : false ,
    encephalitis: json['encephalitis']  == 1 ? true : false ,
    epilepsy:json['epilepsy'] == 1 ? true : false ,
    firstExperienceSeizures:json['first_experience_seizures'].toString(),
    seizuresTime:json['seizures_time'].toString(),
    sufferFromTonsillitis:json['suffer_from_tonsillitis']  == 1 ? true : false ,
    vaccinations:json['vaccinations']  == 1 ? true : false ,


  );



}








