
class AudioModel{



  late String? id;
  final String?  parenthearingImpairment;
  final String? typeHearingImpairment;
  final String? hearingInfo;
  final String? hearingCapabilities;
  final String? treatmentDate;
  final String? treatmentType;
  final String? treatment;
  final String? affectedEars;





  AudioModel({
    this.id,
    this.parenthearingImpairment,
    this.typeHearingImpairment,
    this.hearingInfo,
    this.hearingCapabilities,
    this.treatment,
    this.treatmentDate,
    this.treatmentType,
    this.affectedEars,


  });

  factory AudioModel.fromJson(Map<String, dynamic> json) => AudioModel(
    id: json['id'].toString(),
    parenthearingImpairment: json['parenthearingImpairment'].toString(),
    typeHearingImpairment: json['typeHearingImpairment'].toString(),
    hearingInfo: json['hearingInfo'].toString(),
    hearingCapabilities: json['hearingCapabilities'].toString(),
    treatment: json['treatment'].toString(),
    treatmentDate: json['treatmentDate'].toString(),
    treatmentType: json['treatmentType'].toString(),
    affectedEars: json['affectedEars'].toString(),


    //docsUrls: json['docsUrls'],

  );


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'treatmentType': treatmentType,
      'treatment': treatment,
      'treatmentDate': treatmentDate,
      'parenthearingImpairment': parenthearingImpairment,
      'affectedEars':affectedEars,
      'hearingCapabilities':hearingCapabilities,
      'hearingInfo':hearingInfo,
    };
  }

}








