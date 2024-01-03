import 'package:dio/dio.dart';
import 'package:orthophonienewversion/model/audio_model.dart';
import 'package:orthophonienewversion/model/complete-info-model.dart';
import 'package:orthophonienewversion/model/deiseases-model.dart';
import 'package:orthophonienewversion/model/language-dev-model.dart';
import 'package:orthophonienewversion/model/pregnancy-step2-model.dart';
import 'package:orthophonienewversion/model/pregrancy-step3-model.dart';
import 'package:orthophonienewversion/model/sensorimotor-development.dart';

import '../model/language-dev2-model.dart';
import '../model/pregnancy-step1-model.dart';

class ApiProvider {
  final Dio _dio;
  //
  ApiProvider()

      : _dio = Dio(BaseOptions(
    baseUrl:"https://ortophoniste.symloop.com/api",
    //,


    headers: {
      'Content-Type': 'application/json',
    },
  ));

  Future<Response> registerUser(String name, String email, String password) {
    return _dio.post('/register', data: {
      'name': name,
      'email': email,
      'password': password,

    });
  }


  Future<Response> postdata(CompleteFamilyInfo model,String? token,String? path,int id) {
    return _dio.post(path!, data: {
      "father_name": model.model!.fatherName,
      "father_age": model.model!.fatherAge,
      "father_educational_level":model.model!.fatherEducation,
      "father_job": model.model!.fatherJob,
      "father_health_history": model.model!.fatherHealthReport,
      "mother_name":model.model!.motherName,
      "mother_age": model.model!.motherAge,
      "mother_educational_level":  model.model!.motherEducation,
      "mother_job": model.model1!.motherJob,
      "mother_health_history":  model.model1!.motherHealthReport,
      "related_by_blood": true,
      "number_of_siblings":model.model1!.nbrSiblings,
      "child_order":model.model1!.childNumber,
      "siblings_health_state": model.model1!.siblingsHealth,
      "family_economic_status":model.model1!.familySocialState,
      "interview_id":id,

    },
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',

        },
      ),

    );
  }


  Future<Response> pregnancyDetails(PregnancyStep1Model model,String? token,String? path,int? id) {
    return _dio.post(path!, data: {
      "is_pregnancy_planned": model.is_pregnancy_planned,
      "take_medications": model.take_medications,
      "medications": model.medicationType,
      "rh_incompatibility": model.rh_incompatibility,
      "mother_age_pregnancy": model.mother_age_pregnancy,
      "was_normal_pregnancy": model.was_normal_pregnancy,
      "diseases_during_pregnancy": model.diseases_during_pregnancy,
      "psychological_state": model.psychological_state,
      "interview_id":id,

    },
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',

        },
      ),

    );
  }

  Future<Response> birthDetailsApi(PregnancyStep2Model model,String? token,String? path,int? id) {
    return _dio.post(path!, data: {

        "birth_on_schedule" :model.birth_on_schedule,
        "is_normal_birth" :model.is_normal_birth,
        "is_forceps_used" :model.is_forceps_used,
       "interview_id":id!


    },
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',

        },
      ),

    );
  }


  Future<Response> newbornDetailsApi(PregnancyStep3Model model,String? token,String? path,int?id) {
    return _dio.post(path!, data: {

        "baby_weight" :model.childWeight,
        "cry_immediately":model.cry,
        "deficiency":model.experienceDeficiency,
        "need_resuscitation":model.needResuscitation,
        "resuscitation_duration":model.duration,
        "interview_id":id!


    },
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',

        },
      ),

    );
  }


  Future<Response> developmentalMilestonesApi(SensorimotorDevelopment model,String? token,String? path,int?id) {
    return _dio.post(path!, data: {
      "smile_age": model.smilAge,
      "sit_age":model.sittingAge,
      "crawl_age": model.crawlingAge,
      "walk_age": model.walkingAge,
      "personal_hygiene": model.personalHygieneAcquisition,
      "interview_id":id

    },
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',

        },
      ),

    );
  }

  Future<Response> languageDevelopmentsApi(LanguageDevModel model,String? token,String? path,int?id) {
    return _dio.post(path!, data: {
    "home_language": model.language,
    "bubbling": model.babbling,
    "first_word": model.firstWord,
    "signs_speech": model.isTalking,
    "speach":model.talk,
    "first_phrase": model.firstPhrase,
    "speach_type": model.talkType,
    "interview_id":id

    },
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',

        },
      ),

    );
  }

  Future<Response> socialInteractionsApi(LanguageDevModel2 model,String? token,String? path,int?id) {
    return _dio.post(path!, data: {
      "has_relations":model.hasRelations,
      "isAggressive":model.isAggressive,
      "isPlayer":model.isPlayer,
      "isSocial": model.isPlayer,
      "interview_id":id

    },
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',

        },
      ),

    );
  }
  Future<Response> hearingImpairmentsApi(AudioModel model,String? token,String? path,int?id) {
    return _dio.post(path!, data: {
    "first_notice" :model.firstNotice,
    "deafness_discovery_age":model.deafnessDiscoveryAge,
    "hearing_impairment_type":model.hearingImpairmentType,
    "residual_hearing_remains":model.residualHearingRemains,
    "deafness_degree":model.deafnessDegree.toString(),
    "therapy_hirring":model.therapyHirring,
    "therapy_hirring_date":model.therapyHirringDate,
    "therapy_hirring_type":model.therapyHirringType,
    "deaf_type":model.deafType,
    "affected_ear":model.affectedEar,
    'interview_id' :id,

    },
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',

        },
      ),

    );
  }
  Future<Response> medicalHistoriesApi(DiseaseModel model,String? token,String? path,int?id) {
    return _dio.post(path!, data: {
      "meningitis":model.meningitis,
      "epilepsy":model.epilepsy,
      "encephalitis":model.encephalitis,
      "first_experience_seizures": model.firstExperienceSeizures,
      "seizures_time":model.seizuresTime,
      "suffer_from_tonsillitis":model.sufferFromTonsillitis,
      "vaccinations": model.vaccinations,
      "interview_id":id
    },
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',

        },
      ),

    );
  }

  Future<Response> loginUser(String email, String password) {
    return _dio.post('/login', data: {
      'email': email,
      'password': password,
    });
  }



  Future<Response> saveData(FormData formData, String? token,String? path) {
    print(path);
    return _dio.post(
      path!,
      data: formData,
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',

        },
      ),
    );
  }


  Future getData(token,path) async {
    try {
      Response response = await _dio.get(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Failed to load data ');
      }
    } catch (e) {
      print(e.toString());
      return null;
    }
  }


}