

import 'package:orthophonienewversion/model/audio_model.dart';
import 'package:orthophonienewversion/model/complete-info-model.dart';
import 'package:orthophonienewversion/model/deiseases-model.dart';
import 'package:orthophonienewversion/model/familly_response_model.dart';
import 'package:orthophonienewversion/model/language-dev-model.dart';
import 'package:orthophonienewversion/model/language-dev2-model.dart';
import 'package:orthophonienewversion/model/pregnancy-step1-model.dart';
import 'package:orthophonienewversion/model/pregnancy-step2-model.dart';
import 'package:orthophonienewversion/model/pregrancy-step3-model.dart';
import 'package:orthophonienewversion/model/sensorimotor-development.dart';

class GeneralInfoModel{



  final int? id;
  final String? date;
  final String? name;
  final String? lastName;
  final String? place_birth;
  final String? birthdate;

  final String? address;
  final String? phone;
  final String? directed_by;
  final String? clinic_care_duration;
  final List<FamilyDetailsModel>? family_details;
  final List<PregnancyStep1Model>? pregnancy_details;
  final List<PregnancyStep2Model>? birth_details;
  final List<PregnancyStep3Model>?  newborn_details;
  final List<SensorimotorDevelopment>? developmental_milestones;
  final List<LanguageDevModel> ? language_developments;
  final List<LanguageDevModel2>? social_interactions;
  final List<AudioModel>? hearing_impairments;
  final List<DiseaseModel>? medical_histories;


  GeneralInfoModel({
    this.id,
    this.date,
    this.name,
    this.lastName,
    this.place_birth,
    this.birthdate,
    this.address,
    this.phone,
    this.directed_by,
    this.clinic_care_duration,
    this.birth_details,
    this.developmental_milestones,
    this.hearing_impairments,
    this.language_developments,
    this.family_details,
    this.medical_histories,
    this.newborn_details,
    this.pregnancy_details,
    this.social_interactions,

  });

  factory GeneralInfoModel.fromJson(Map<String, dynamic> json) => GeneralInfoModel(
    id: json['id'],
    date: json['interview_date'].toString(),
    name: json['first_name'].toString(),
    lastName: json['last_name'].toString(),
    place_birth: json['place_birth'].toString(),
    birthdate: json['birthday'].toString(),
    address: json['address'].toString(),
    phone: json['phone'].toString(),
    directed_by: json['directed_by'].toString(),
    clinic_care_duration:json['clinic_care_duration'].toString(),
    birth_details: (json['birth_details'] as List<dynamic>)
        .map((birthData) => PregnancyStep2Model.fromJson(birthData))
        .toList(),
    pregnancy_details: (json['pregnancy_details'] as List<dynamic>)
        .map((birthData) => PregnancyStep1Model.fromJson(birthData))
        .toList(),
    social_interactions: (json['social_interactions'] as List<dynamic>)
        .map((birthData) => LanguageDevModel2.fromJson(birthData))
        .toList(),

    medical_histories: (json['medical_histories'] as List<dynamic>)
        .map((birthData) => DiseaseModel.fromJson(birthData))
        .toList(),


    language_developments: (json['language_developments'] as List<dynamic>)
        .map((birthData) => LanguageDevModel.fromJson(birthData))
        .toList(),

   /*









        */

    hearing_impairments: (json['hearing_impairments'] as List<dynamic>)
        .map((birthData) => AudioModel.fromJson(birthData))
        .toList(),
    developmental_milestones: (json['developmental_milestones'] as List<dynamic>)
        .map((birthData) => SensorimotorDevelopment.fromJson(birthData))
        .toList(),
    family_details: (json['family_details'] as List<dynamic>)
        .map((birthData) => FamilyDetailsModel.fromJson(birthData))
        .toList(),



  );




  Map<String, dynamic> toMap() {
    return {
      "interview_date": date,
      "first_name":name,
      "last_name": lastName,
      "place_birth":place_birth,
      "birthday": birthdate,
      "clinic_care_duration": place_birth,
      "address": address,
      "phone": phone,
      "directed_by":directed_by
    };
  }

}