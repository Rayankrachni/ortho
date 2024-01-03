
class LanguageDevModel{



  late String? id;
  final String? language;
  final String? firstWord;
  final String? talk;
  final String? babbling;
  final String? firstPhrase;
  final String? talkType;
  final bool? isTalking;





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



    isTalking: json['signs_speech'] == 1 ? true : false ,
    talkType: json['speach_type'].toString(),
    talk: json['speach'].toString(),
    babbling: json['bubbling'].toString(),
    firstPhrase: json['first_phrase'].toString(),
    firstWord: json['first_word'].toString(),
    language: json['home_language'].toString(),


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








