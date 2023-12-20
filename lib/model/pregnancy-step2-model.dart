

class PregnancyStep2Model{



  late String? id;
  final String? pregnancyExactTime;
  final String? isNormal;
  final String? lastInfo;




  PregnancyStep2Model({
    this.id,
    this.pregnancyExactTime,
    this.isNormal,
    this.lastInfo,



  });

  factory PregnancyStep2Model.fromJson(Map<String, dynamic> json) => PregnancyStep2Model(
    id: json['id'].toString(),
    pregnancyExactTime: json['pregnancyExactTime'].toString(),
    isNormal: json['isNormal'].toString(),
    lastInfo: json['lastInfo'].toString(),

    //docsUrls: json['docsUrls'],

  );


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'pregnancyExactTime': pregnancyExactTime,
      'isNormal': isNormal,
      'lastInfo': lastInfo,
  };

}


}