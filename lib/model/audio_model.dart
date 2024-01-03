
class AudioModel{

  late int? id;
  final int? deafnessDiscoveryAge;
  final String ? hearingImpairmentType;
  final bool? residualHearingRemains;
  final int? deafnessDegree;
  final bool? therapyHirring;
  final String? therapyHirringDate;
  final String? therapyHirringType;
  final String? deafType;
  final String? affectedEar;
  final String? firstNotice;

  AudioModel({
    this.id,
    this.deafnessDiscoveryAge,
    this.hearingImpairmentType,
    this.residualHearingRemains,
    this.deafnessDegree,
    this.therapyHirring,
    this.therapyHirringDate,
    this.therapyHirringType,
    this.deafType,
    this.affectedEar,
    this.firstNotice
  });

  factory AudioModel.fromJson(Map<String, dynamic> json) => AudioModel(
      id:json['id'] as int,
      firstNotice:json['first_notice'],
      deafnessDiscoveryAge:json['deafness_discovery_age'],
      hearingImpairmentType:json['deafness-discovery-age'].toString(),
      residualHearingRemains:json['deafness-discovery-age']  == 1 ? true : false ,
      //deafnessDegree:json['deafness_degree'],
      therapyHirring:json['therapy_hirring']  == 1 ? true : false ,
      therapyHirringDate:json['therapy_hirring_date'].toString(),
      therapyHirringType:json['hearing_impairment_type'].toString(),
      deafType:json['deaf_type'].toString(),
      affectedEar:json['affected_ear'].toString(),


  );



}
