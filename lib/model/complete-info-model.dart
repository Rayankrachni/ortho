import 'package:orthophonienewversion/model/familly-info-model.dart';
import 'package:orthophonienewversion/model/family-info1-model.dart';

class CompleteFamilyInfo {
  late String? id;
  final FamilyInfoPart1? model;
  final FamilyInfoPart2? model1;

  CompleteFamilyInfo({
    this.id,
    this.model,
    this.model1
  });

  factory CompleteFamilyInfo.fromJson(Map<String, dynamic> json) {
    return CompleteFamilyInfo(
      id: json['id'].toString(),
      model: FamilyInfoPart1.fromJson(json['model']),
      model1: FamilyInfoPart2.fromJson(json['model1']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
       // Assuming FamilyInfoPart1 has a toJson method
    };
  }
}
