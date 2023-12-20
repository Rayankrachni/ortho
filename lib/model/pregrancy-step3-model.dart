

class PregnancyStep3Model{



  late String? id;
  final int? childWeight;
  final String? needResuscitation;
  final String? cry;
  final String? duration;
  final String? experienceDeficiency;




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
    childWeight: int.parse(json['childWeight'].toString(),),
    needResuscitation: json['needResuscitation'].toString(),
    cry: json['cry'].toString(),
    duration: json['duration'].toString(),
    experienceDeficiency: json['experienceDeficiency'].toString(),


    //docsUrls: json['docsUrls'],

  );


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'experienceDeficiency': experienceDeficiency,
      'isNormal': cry,
      'duration': duration,
      'needResuscitation':needResuscitation,
      'childWeight':childWeight


    };

  }


}