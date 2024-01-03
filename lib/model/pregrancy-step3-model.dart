

class PregnancyStep3Model{

  late String? id;
  final int? childWeight;
  final bool? needResuscitation;
  final bool? cry;
  final String? duration;
  final bool? experienceDeficiency;


  PregnancyStep3Model({
    this.id,
    this.childWeight,
    this.needResuscitation,
    this.cry,
    this.duration,
    this.experienceDeficiency,
  });


  factory PregnancyStep3Model.fromJson(Map<String, dynamic> json) => PregnancyStep3Model(
    id: json['id'].toString(),
    childWeight: int.parse(json['baby_weight'].toString(),),
    needResuscitation: json['need_resuscitation']  == 1 ? true : false ,
    cry: json['cry_immediately']  == 1 ? true : false ,
    duration: json['resuscitation_duration'].toString(),
    experienceDeficiency: json['deficiency'] == 1 ? true : false ,


    //docsUrls: json['docsUrls'],

  );





}