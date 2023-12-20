
class LanguageDevModel2{



  late String? id;
  final String? isSocial;
  final String? isPlayer;
  final String? hasRelations;
  final String? isAggressive;





  LanguageDevModel2({
    this.id,
    this.isSocial,
    this.isPlayer,
    this.hasRelations,
    this.isAggressive,



  });

  factory LanguageDevModel2.fromJson(Map<String, dynamic> json) => LanguageDevModel2(
    id: json['id'].toString(),
    isSocial: json['isSocial'].toString(),
    isPlayer: json['isPlayer'].toString(),
    isAggressive: json['isAggressive'].toString(),
    hasRelations: json['hasRelations'].toString(),



    //docsUrls: json['docsUrls'],

  );


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'isSocial': isSocial,
      'isPlayer': isPlayer,
      'isAggressive': isAggressive,
      'hasRelations': hasRelations,



    };
  }

}








