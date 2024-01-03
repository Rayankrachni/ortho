

class PregnancyStep1Model{



  late String? id;
  final bool? is_pregnancy_planned;
  final bool? take_medications;
  final bool? rh_incompatibility;
  final int? mother_age_pregnancy;
  final bool? was_normal_pregnancy;
  final bool? diseases_during_pregnancy;
  final String? psychological_state;
  final String? medicationType;



  PregnancyStep1Model({
    this.id,
    this.is_pregnancy_planned,
    this.take_medications,
    this.rh_incompatibility,
    this.mother_age_pregnancy,
    this.was_normal_pregnancy,
    this.diseases_during_pregnancy,
    this.psychological_state,
    this.medicationType


  });

  factory PregnancyStep1Model.fromJson(Map<String, dynamic> json) => PregnancyStep1Model(
    id: json['id'].toString(),
    is_pregnancy_planned: json['is_pregnancy_planned'] ==1 ? true : false ,
    take_medications: json['take_medications'] ==1  ? true : false ,
    rh_incompatibility: json['rh_incompatibility']  ==1 ? true : false ,
    mother_age_pregnancy: int.tryParse(json['mother_age_pregnancy'].toString(),),
    was_normal_pregnancy: json['was_normal_pregnancy'] ==1 ? true : false ,
    diseases_during_pregnancy: json['diseases_during_pregnancy'] ==1 ? true : false ,
    psychological_state: json['psychological_state'].toString(),
    medicationType: json['medications'].toString(),
    //docsUrls: json['docsUrls'],

  );




  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'is_pregnancy_planned': is_pregnancy_planned,
      'take_medications': take_medications,
      'rh_incompatibility': rh_incompatibility,
      'mother_age_pregnancy':mother_age_pregnancy,
      'was_normal_pregnancy':was_normal_pregnancy,
      'diseases_during_pregnancy':diseases_during_pregnancy,
      'psychological_state':psychological_state,
      'medicationType':medicationType
    };
  }

}