

class PregnancyStep2Model{



  late String? id;
  final bool? birth_on_schedule;
  final bool? is_normal_birth;
  final bool? is_forceps_used;


  PregnancyStep2Model({
    this.id,
    this.birth_on_schedule,
    this.is_normal_birth,
    this.is_forceps_used,



  });

  factory PregnancyStep2Model.fromJson(Map<String, dynamic> json) => PregnancyStep2Model(
    id: json['id'].toString(),
    birth_on_schedule: json['birth_on_schedule'] == 1 ? true : false ,
    is_normal_birth: json['is_normal_birth']  == 1 ? true : false ,
    is_forceps_used: json['is_forceps_used']  == 1 ? true : false ,
  );


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'birth_on_schedule': birth_on_schedule,
      'is_normal_birth': is_normal_birth,
      'is_forceps_used': is_forceps_used,
  };

}


}