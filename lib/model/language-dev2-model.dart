
class LanguageDevModel2{



  late String? id;
  final bool? isSocial;
  final bool? isPlayer;
  final bool? hasRelations;
  final bool? isAggressive;





  LanguageDevModel2({
    this.id,
    this.isSocial,
    this.isPlayer,
    this.hasRelations,
    this.isAggressive,



  });

  factory LanguageDevModel2.fromJson(Map<String, dynamic> json) => LanguageDevModel2(
    id: json['id'].toString(),
    isSocial: json['isSocial']==1 ? true : false ,
    isPlayer: json['isPlayer'] ==1  ? true : false ,
    isAggressive: json['isAggressive'] == 1 ? true : false ,
    hasRelations: json['has_relations'] == 1 ? true : false ,



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








