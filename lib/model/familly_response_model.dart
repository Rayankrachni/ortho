class FamilyDetailsModel {
  final int id;
  final String fatherName;
  final int fatherAge;
  final String fatherEducationalLevel;
  final String fatherJob;
  final String fatherHealthHistory;
  final String motherName;
  final int motherAge;
  final String motherEducationalLevel;
  final String motherJob;
  final String motherHealthHistory;
  final int relatedByBlood;
  final int numberOfSiblings;
  final int childOrder;
  final String siblingsHealthState;
  final String familyEconomicStatus;
  final int interviewId;
  final DateTime createdAt;
  final DateTime updatedAt;

  FamilyDetailsModel({
    required this.id,
    required this.fatherName,
    required this.fatherAge,
    required this.fatherEducationalLevel,
    required this.fatherJob,
    required this.fatherHealthHistory,
    required this.motherName,
    required this.motherAge,
    required this.motherEducationalLevel,
    required this.motherJob,
    required this.motherHealthHistory,
    required this.relatedByBlood,
    required this.numberOfSiblings,
    required this.childOrder,
    required this.siblingsHealthState,
    required this.familyEconomicStatus,
    required this.interviewId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory FamilyDetailsModel.fromJson(Map<String, dynamic> json) {
    return FamilyDetailsModel(
      id: json['id'],
      fatherName: json['father_name'],
      fatherAge: json['father_age'],
      fatherEducationalLevel: json['father_educational_level'],
      fatherJob: json['father_job'],
      fatherHealthHistory: json['father_health_history'],
      motherName: json['mother_name'],
      motherAge: json['mother_age'],
      motherEducationalLevel: json['mother_educational_level'],
      motherJob: json['mother_job'],
      motherHealthHistory: json['mother_health_history'],
      relatedByBlood: json['related_by_blood'],
      numberOfSiblings: json['number_of_siblings'],
      childOrder: json['child_order'],
      siblingsHealthState: json['siblings_health_state'],
      familyEconomicStatus: json['family_economic_status'],
      interviewId: json['interview_id'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }
}
