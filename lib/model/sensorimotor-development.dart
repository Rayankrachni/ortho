

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
    smilAge: int.parse(json['smile_age'].toString(),),
    sittingAge:int.parse(json['sit_age'].toString(),),
    crawlingAge: int.parse(json['crawl_age'].toString(),),
    walkingAge: int.parse(json['walk_age'].toString(),),
    personalHygieneAcquisition: json['personal_hygiene'].toString(),

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