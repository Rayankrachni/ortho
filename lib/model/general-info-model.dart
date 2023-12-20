

class GeneralInfoModel{



  late String? id;
  final String? date;
  final String? name;
  final String? lastName;
  final String? city;
  final String? birthdate;
  final int? duration;
  final String? address;
  final String? phone;
  final String? lastInfo;


  GeneralInfoModel({
    this.id,
    this.date,
    this.name,
    this.lastName,
    this.city,
    this.birthdate,
    this.duration,
    this.address,
    this.phone,
    this.lastInfo,

  });

  factory GeneralInfoModel.fromJson(Map<String, dynamic> json) => GeneralInfoModel(
    id: json['id'].toString(),
    date: json['date'].toString(),
    name: json['name'].toString(),
    lastName: json['lastName'].toString(),
    city: json['city'].toString(),
    birthdate: json['birthdate'].toString(),
    duration: int.tryParse(json['duration'].toString(),),
    address: json['address'].toString(),
    phone: json['phone'].toString(),
    lastInfo: json['lastInfo'].toString(),
    //docsUrls: json['docsUrls'],

  );


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'lastName': lastName,
      'city': city,
      'birthdate': birthdate,
      'duration':duration,
      'address':address,
      'phone':phone,
      'lastInfo':lastInfo,
    };
  }

}