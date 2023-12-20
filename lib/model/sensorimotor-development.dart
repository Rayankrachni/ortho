

class SensorimotorDevelopment{



  late String? id;
  final int? smilAge;
  final int? sittingAge;
  final int? crawlingAge;
  final int? walkingAge;
  final String? personalHygieneAcquisition;




  SensorimotorDevelopment({
    this.id,
    this.sittingAge,
    this.smilAge,
    this.crawlingAge,
    this.walkingAge,
    this.personalHygieneAcquisition,



  });

  factory SensorimotorDevelopment.fromJson(Map<String, dynamic> json) => SensorimotorDevelopment(
    id: json['id'].toString(),
    smilAge: int.parse(json['smilAge'].toString(),),
    sittingAge:int.parse(json['sittingAge'].toString(),),
    crawlingAge: int.parse(json['crawlingAge'].toString(),),
    walkingAge: int.parse(json['walking'].toString(),),
    personalHygieneAcquisition: json['personalHygieneAcquisition'].toString(),


    //docsUrls: json['docsUrls'],

  );


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'smilAge': smilAge,
      'sittingAge': sittingAge,
      'crawlingAge': crawlingAge,
      'walkingAge':walkingAge,
      'personalHygieneAcquisition':personalHygieneAcquisition


    };

  }


}