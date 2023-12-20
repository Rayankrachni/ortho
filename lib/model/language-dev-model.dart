
class LanguageDevModel{



  late String? id;
  final String? language;
  final String? firstWord;
  final String? talk;
  final String? babbling;
  final String? firstPhrase;
  final String? talkType;
  final String? isTalking;





  LanguageDevModel({
    this.id,
    this.language,
    this.firstPhrase,
    this.firstWord,
    this.talkType,
    this.babbling,
    this.talk,
    this.isTalking,


  });

  factory LanguageDevModel.fromJson(Map<String, dynamic> json) => LanguageDevModel(
    id: json['id'].toString(),
    isTalking: json['isTalking'].toString(),
    talkType: json['talkType'].toString(),
    talk: json['talk'].toString(),
    babbling: json['babbling'].toString(),
    firstPhrase: json['firstPhrase'].toString(),
    firstWord: json['firstWord'].toString(),
    language: json['language'].toString(),


    //docsUrls: json['docsUrls'],

  );


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'isTalking': isTalking,
      'talkType': talkType,
      'talk': talk,
      'babbling': babbling,
      'firstPhrase':firstPhrase,
      'language':language,
      'firstWord':firstWord,



    };
  }

}








