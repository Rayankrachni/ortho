import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:orthophonienewversion/auth/signIn.dart';
import 'package:orthophonienewversion/homePage.dart';
import 'package:orthophonienewversion/model/audio_model.dart';
import 'package:orthophonienewversion/model/complete-info-model.dart';
import 'package:orthophonienewversion/model/deiseases-model.dart';
import 'package:orthophonienewversion/model/general-info-model.dart';
import 'package:orthophonienewversion/model/language-dev-model.dart';
import 'package:orthophonienewversion/model/language-dev2-model.dart';
import 'package:orthophonienewversion/model/pregnancy-step1-model.dart';
import 'package:orthophonienewversion/model/pregnancy-step2-model.dart';
import 'package:orthophonienewversion/model/pregrancy-step3-model.dart';
import 'package:orthophonienewversion/model/sensorimotor-development.dart';
import 'package:orthophonienewversion/pages/Creation/Primary%20Achievements/primary_achievements.main.dart';
import 'package:orthophonienewversion/pages/Creation/childDev/child-dev-page3.dart';
import 'package:orthophonienewversion/pages/Creation/childDev/disorders.dart';
import 'package:orthophonienewversion/pages/Creation/childDev/languageDev.dart';
import 'package:orthophonienewversion/pages/Creation/childDev/languageDev2.dart';
import 'package:orthophonienewversion/pages/Creation/pregency/pregancy-main-page.dart';
import 'package:orthophonienewversion/pages/Creation/pregency/pregency-step4.dart';
import 'package:orthophonienewversion/provider/dio.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/app-toast.dart';
import 'package:orthophonienewversion/utils/shared-pref-helper.dart';

import '../pages/Creation/childDev/child-dev-page1.dart';
import '../pages/Creation/pregency/pregency-step3.dart';
import '../pages/familly-info/familly-info.dart';

class FormDataProvider extends ChangeNotifier {

  final ApiProvider _apiProvider;


  FormDataProvider(this._apiProvider);

  GeneralInfoModel generalInfoModel=GeneralInfoModel();
  // Add other form fields as needed

  void updateGeneralInfoModel(GeneralInfoModel model) {
    generalInfoModel = model;
    notifyListeners();
  }

  List<String> audioAnswers =['','','','','','','',''];


  List<String> audioCorrectAnswers =['صوت الامطار','صوت العصافير','صوت الامواج','صوت السيارة','صوت سيارة الشرطة','صوت البرق','صوت الامطار','صوت الحصان'];
  void updateAudioAnswer(int index,String answer) {

    print("-----------$index-------");
    audioAnswers[index-1] = answer;
    print( audioAnswers[index-1]);
    notifyListeners();
  }


  List<String> physicalAnswers =['','','','','',''];
  int   currentPageIndex=0;
  List<String> physicalCorrectAnswers =['الشعر','العين','الفم','اليد','الاذن','الرجل'];

  void movetoNextPage(){
    currentPageIndex++;
    notifyListeners();
  }
  void updateCurrentPage(){
    currentPageIndex=0;
    notifyListeners();
  }





  void updatePhysicalAnswer(int index,String answer) {

    physicalAnswers[index] = answer;

    notifyListeners();
  }








  String mouth ='';


  void updateMouthValue(String answer) {
    mouth = answer;
    notifyListeners();
  }




  CompleteFamilyInfo completeFamilyInfo=CompleteFamilyInfo();
  // Add other form fields as needed

  void updatecompleteFamilyInfo(CompleteFamilyInfo model) {
    completeFamilyInfo = model;
    notifyListeners();
  }


  PregnancyStep1Model pregnancyStep1Model=PregnancyStep1Model();
  // Add other form fields as needed

  void updatePregnancyStep1Model(PregnancyStep1Model model) {
    pregnancyStep1Model = model;
    notifyListeners();
  }


  PregnancyStep2Model pregnancyStep2Model=PregnancyStep2Model();
  // Add other form fields as needed

  void updatePregnancyStep2Model(PregnancyStep2Model model) {
    pregnancyStep2Model = model;
    notifyListeners();
  }



  PregnancyStep3Model pregnancyStep3Model=PregnancyStep3Model();
  // Add other form fields as needed

  void updatePregnancyStep3Model(PregnancyStep3Model model) {
    pregnancyStep3Model = model;
    notifyListeners();
  }


  SensorimotorDevelopment sensorimotorDevelopment=SensorimotorDevelopment();
  // Add other form fields as needed

  void updateSensorimotorDevelopment(SensorimotorDevelopment model) {
    sensorimotorDevelopment = model;
    notifyListeners();
  }


  LanguageDevModel languageDevModel=LanguageDevModel();
  // Add other form fields as needed

  void updateLanguageDev(LanguageDevModel model) {
    languageDevModel = model;
    notifyListeners();
  }


  LanguageDevModel2 languageDevModel2=LanguageDevModel2();
  // Add other form fields as needed

  void updateLanguageDev2(LanguageDevModel2 model) {
    languageDevModel2 = model;
    notifyListeners();
  }


  AudioModel audioModel=  AudioModel();
  // Add other form fields as needed

  void updateAudioModel(AudioModel model) {
    audioModel = model;
    notifyListeners();
  }

  DiseaseModel diseaseModel=  DiseaseModel();
  // Add other form fields as needed

  void updateDiseaseModel(DiseaseModel model) {
    diseaseModel = model;
    notifyListeners();
  }

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
  List<GeneralInfoModel> models=[];


  Future<void> signOut(BuildContext context) async {
    try {
      await SharedPreferencesHelper.remove("USER_TOKEN");
      pushAndRemove(context: context, screen: SignInScreen());
    } catch (error) {
      // Handle errors that may occur during the sign-out process
      print("Error during sign-out: $error");
      // You may want to show an error message to the user or handle the error in another way
    }
  }


  Future<List<GeneralInfoModel>> fetchAllInterview() async {
    try {
      models=[];
      String? token = await SharedPreferencesHelper.getString("USER_TOKEN");

      print("token $token");

      final response = await _apiProvider.getData(token, '/informations');

      if (response != null) {
        print("jjjjj");
        print(response.toString());
        models = List<GeneralInfoModel>.from(
          response.map((categoryData) => GeneralInfoModel.fromJson(categoryData)),
        );

        print(models.length);
        notifyListeners();
        return models;
      } else {
        // Handle the case where the response is null
        print("API response is null");
        return []; // Return an empty list or throw an error based on your use case
      }
    } catch (error) {
      // Handle exceptions that might occur during the API call
      print("Error during API call: $error");
      return []; // Return an empty list or throw an error based on your use case
    }
  }




  Future<void> postGeneralInfo(GeneralInfoModel model, BuildContext context) async {
    _setLoading(true);

    try {
      String? token = await SharedPreferencesHelper.getString("USER_TOKEN");
      FormData formData = FormData.fromMap({
        "interview_date": model.date,
        "first_name": model.name,
        "last_name": model.lastName,
        "place_birth": model.place_birth,
        "birthday":model.birthdate,
        "clinic_care_duration":model.clinic_care_duration,
        "address": model.address,
        "phone": model.phone,
        "directed_by": model.directed_by
      });
      Response response = await _apiProvider.saveData(formData, token, '/interviews');

      print("response status code: ${response.statusCode}");

      if (response.statusCode == 201) {


        await SharedPreferencesHelper.setInt("interview_id",response.data['id']);
       // Navigator.pushReplacement(context, MaterialPageRoute(builder: ()=>FamilyInfo()));
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext conetxt)=>FamilyInfo()));
      }
    } catch (e) {
      // Handle error here
      print("Error: $e");

      if (e is DioError) {
        if (e.response != null) {
          // Handle DioError with response
          print("DioError Response: ${e.response}");
          ToastHelper.showToast(msg: "Server error: ${e.response!.statusCode}", backgroundColor: Colors.red);
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        } else {
          // Handle DioError without response
          print("DioError: ${e.message}");
          ToastHelper.showToast(msg: "Network error", backgroundColor: Colors.red);
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        }
      } else {
        // Handle other types of errors
        print("Unexpected error: $e");
        ToastHelper.showToast(msg: "Unexpected error occurred", backgroundColor: Colors.red);
        if (Navigator.canPop(context)) {
          Navigator.pop(context);
        }
      }
    } finally {
      _setLoading(false);
    }
  }


  Future<void> postFamillyInfo(CompleteFamilyInfo model, BuildContext context) async {
    _setLoading(true);

    try {
      String? token = await SharedPreferencesHelper.getString("USER_TOKEN");

      int? interviewId= await SharedPreferencesHelper.getInt("interview_id");

      Response response = await _apiProvider.postdata(model, token, '/family-details',interviewId!);

      print("response status code: ${response.statusCode}");

      if (response.statusCode == 201) {
        print(response.data);
        pushAndRemove(context: context, screen: PregancyMainPage());
      }
    } catch (e) {
      // Handle error here
      print("Error: $e");

      if (e is DioError) {
        if (e.response != null) {
          // Handle DioError with response
          print("DioError Response: ${e.response}");
          ToastHelper.showToast(msg: "Server error: ${e.response!.statusCode}", backgroundColor: Colors.red);
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        } else {
          // Handle DioError without response
          print("DioError: ${e.message}");
          ToastHelper.showToast(msg: "Network error", backgroundColor: Colors.red);
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        }
      } else {
        // Handle other types of errors
        print("Unexpected error: $e");
        ToastHelper.showToast(msg: "Unexpected error occurred", backgroundColor: Colors.red);
        if (Navigator.canPop(context)) {
          Navigator.pop(context);
        }
      }
    } finally {
      _setLoading(false);
    }
  }


  Future<void> pregnancyDetails(PregnancyStep1Model model, BuildContext context) async {
    _setLoading(true);
    String? token = await SharedPreferencesHelper.getString("USER_TOKEN");
    int? interviewId= await SharedPreferencesHelper.getInt("interview_id");

      try {


        Response response = await _apiProvider.pregnancyDetails(model, token, '/pregnancy-details',interviewId);

        print("response status code: ${response.statusCode}");

        if (response.statusCode == 201) {
          print(response.data);
          pushAndRemove(context: context, screen: PregrencyStep3());
        }
      } catch (e) {
        // Handle error here
        print("Error: $e");

        if (e is DioError) {
          if (e.response != null) {
            // Handle DioError with response
            print("DioError Response: ${e.response}");
            ToastHelper.showToast(msg: "Server error: ${e.response!.statusCode}", backgroundColor: Colors.red);
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          } else {
            // Handle DioError without response
            print("DioError: ${e.message}");
            ToastHelper.showToast(msg: "Network error", backgroundColor: Colors.red);
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          }
        } else {
          // Handle other types of errors
          print("Unexpected error: $e");
          ToastHelper.showToast(msg: "Unexpected error occurred", backgroundColor: Colors.red);
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        }
      } finally {
        _setLoading(false);
      }


  }

  Future<void> birthDetails(PregnancyStep2Model model, BuildContext context) async {
    _setLoading(true);
    String? token = await SharedPreferencesHelper.getString("USER_TOKEN");
    int? interviewId= await SharedPreferencesHelper.getInt("interview_id");

      try {


        Response response = await _apiProvider.birthDetailsApi(model, token, '/birth-details',interviewId);

        print("response status code: ${response.statusCode}");

        if (response.statusCode == 201) {
          print(response.data);
          pushAndRemove(context: context, screen: PregrencyStep4());
        }
      } catch (e) {
        // Handle error here
        print("Error: $e");

        if (e is DioError) {
          if (e.response != null) {
            // Handle DioError with response
            print("DioError Response: ${e.response}");
            ToastHelper.showToast(msg: "Server error: ${e.response!.statusCode}", backgroundColor: Colors.red);
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          } else {
            // Handle DioError without response
            print("DioError: ${e.message}");
            ToastHelper.showToast(msg: "Network error", backgroundColor: Colors.red);
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          }
        }
        else {
          // Handle other types of errors
          print("Unexpected error: $e");
          ToastHelper.showToast(msg: "Unexpected error occurred", backgroundColor: Colors.red);
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        }
      } finally {
        _setLoading(false);
      }


  }


  Future<void> newbornDetails(PregnancyStep3Model model, BuildContext context) async {
    _setLoading(true);
    String? token = await SharedPreferencesHelper.getString("USER_TOKEN");
    int? interviewId= await SharedPreferencesHelper.getInt("interview_id");

      try {


        Response response = await _apiProvider.newbornDetailsApi(model, token, '/newborn-details',interviewId);

        print("response status code: ${response.statusCode}");

        if (response.statusCode == 201) {
          print(response.data);
          pushAndRemove(context: context, screen: ChildDevPage1());
        }
      } catch (e) {
        // Handle error here
        print("Error: $e");

        if (e is DioError) {
          if (e.response != null) {
            // Handle DioError with response
            print("DioError Response: ${e.response}");
            ToastHelper.showToast(msg: "Server error: ${e.response!.statusCode}", backgroundColor: Colors.red);
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          } else {
            // Handle DioError without response
            print("DioError: ${e.message}");
            ToastHelper.showToast(msg: "Network error", backgroundColor: Colors.red);
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          }
        } else {
          // Handle other types of errors
          print("Unexpected error: $e");
          ToastHelper.showToast(msg: "Unexpected error occurred", backgroundColor: Colors.red);
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        }
      } finally {
        _setLoading(false);
      }


  }

  Future<void> developmentalMilestones(SensorimotorDevelopment model, BuildContext context) async {
    _setLoading(true);
    String? token = await SharedPreferencesHelper.getString("USER_TOKEN");
    int? interviewId= await SharedPreferencesHelper.getInt("interview_id");

      try {


        Response response = await _apiProvider.developmentalMilestonesApi(model, token, '/developmental-milestones',interviewId);

        print("response status code: ${response.statusCode}");

        if (response.statusCode == 201) {
          print(response.data);
          pushAndRemove(context: context, screen: languageDevPage());
        }
      } catch (e) {
        // Handle error here
        print("Error: $e");

        if (e is DioError) {
          if (e.response != null) {
            // Handle DioError with response
            print("DioError Response: ${e.response}");
            ToastHelper.showToast(msg: "Server error: ${e.response!.statusCode}", backgroundColor: Colors.red);
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          } else {
            // Handle DioError without response
            print("DioError: ${e.message}");
            ToastHelper.showToast(msg: "Network error", backgroundColor: Colors.red);
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          }
        } else {
          // Handle other types of errors
          print("Unexpected error: $e");
          ToastHelper.showToast(msg: "Unexpected error occurred", backgroundColor: Colors.red);
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        }
      } finally {
        _setLoading(false);
      }


  }

  Future<void> languageDevelopments(LanguageDevModel model, BuildContext context) async {
    _setLoading(true);
    String? token = await SharedPreferencesHelper.getString("USER_TOKEN");
    int? interviewId= await SharedPreferencesHelper.getInt("interview_id");

      try {


        Response response = await _apiProvider.languageDevelopmentsApi(model, token, '/language-developments',interviewId);

        print("response status code: ${response.statusCode}");

        if (response.statusCode == 201) {
          print(response.data);
          pushAndRemove(context: context, screen: LanguageDevPage2());
        }
      } catch (e) {
        // Handle error here
        print("Error: $e");

        if (e is DioError) {
          if (e.response != null) {
            // Handle DioError with response
            print("DioError Response: ${e.response}");
            ToastHelper.showToast(msg: "Server error: ${e.response!.statusCode}", backgroundColor: Colors.red);
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          } else {
            // Handle DioError without response
            print("DioError: ${e.message}");
            ToastHelper.showToast(msg: "Network error", backgroundColor: Colors.red);
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          }
        } else {
          // Handle other types of errors
          print("Unexpected error: $e");
          ToastHelper.showToast(msg: "Unexpected error occurred", backgroundColor: Colors.red);
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        }
      } finally {
        _setLoading(false);
      }


  }



  Future<void> socialInteractions(LanguageDevModel2 model, BuildContext context) async {
    _setLoading(true);
    String? token = await SharedPreferencesHelper.getString("USER_TOKEN");
    int? interviewId= await SharedPreferencesHelper.getInt("interview_id");

      try {


        Response response = await _apiProvider.socialInteractionsApi(model, token, '/social-interactions',interviewId);

        print("response status code: ${response.statusCode}");

        if (response.statusCode == 201) {
          print(response.data);
          pushAndRemove(context: context, screen: ChildDevPage3());
        }
      } catch (e) {
        // Handle error here
        print("Error: $e");

        if (e is DioError) {
          if (e.response != null) {
            // Handle DioError with response
            print("DioError Response: ${e.response}");
            ToastHelper.showToast(msg: "Server error: ${e.response!.statusCode}", backgroundColor: Colors.red);
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          } else {
            // Handle DioError without response
            print("DioError: ${e.message}");
            ToastHelper.showToast(msg: "Network error", backgroundColor: Colors.red);
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          }
        } else {
          // Handle other types of errors
          print("Unexpected error: $e");
          ToastHelper.showToast(msg: "Unexpected error occurred", backgroundColor: Colors.red);
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        }
      } finally {
        _setLoading(false);
      }


  }

  Future<void> hearingImpairments(AudioModel model, BuildContext context) async {
    _setLoading(true);
    String? token = await SharedPreferencesHelper.getString("USER_TOKEN");
    int? interviewId= await SharedPreferencesHelper.getInt("interview_id");

      try {


        Response response = await _apiProvider.hearingImpairmentsApi(model, token, '/hearing-impairments',interviewId);

        print("response status code: ${response.statusCode}");

        if (response.statusCode == 201) {

          pushAndRemove(context: context, screen: ChildDevPage2());
        }
      } catch (e) {
        // Handle error here
        print("Error: $e");

        if (e is DioError) {
          if (e.response != null) {
            // Handle DioError with response
            print("DioError Response: ${e.response}");
            ToastHelper.showToast(msg: "Server error: ${e.response!.statusCode}", backgroundColor: Colors.red);
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          } else {
            // Handle DioError without response
            print("DioError: ${e.message}");
            ToastHelper.showToast(msg: "Network error", backgroundColor: Colors.red);
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          }
        } else {
          // Handle other types of errors
          print("Unexpected error: $e");
          ToastHelper.showToast(msg: "Unexpected error occurred", backgroundColor: Colors.red);
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        }
      } finally {
        _setLoading(false);
      }


  }

  Future<void> medicalHistories(DiseaseModel model, BuildContext context) async {
    _setLoading(true);
    String? token = await SharedPreferencesHelper.getString("USER_TOKEN");
    int? interviewId= await SharedPreferencesHelper.getInt("interview_id");

      try {


        Response response = await _apiProvider.medicalHistoriesApi(model, token, '/medical-histories',interviewId);

        print("response status code: ${response.statusCode}");

        if (response.statusCode == 201) {
          print(response.data);
          pushAndRemove(context: context, screen: PrimaryAchievementPage());
        }
      } catch (e) {
        // Handle error here
        print("Error: $e");

        if (e is DioError) {
          if (e.response != null) {
            // Handle DioError with response
            print("DioError Response: ${e.response}");
            ToastHelper.showToast(msg: "Server error: ${e.response!.statusCode}", backgroundColor: Colors.red);
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          } else {
            // Handle DioError without response
            print("DioError: ${e.message}");
            ToastHelper.showToast(msg: "Network error", backgroundColor: Colors.red);
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          }
        } else {
          // Handle other types of errors
          print("Unexpected error: $e");
          ToastHelper.showToast(msg: "Unexpected error occurred", backgroundColor: Colors.red);
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        }
      } finally {
        _setLoading(false);
      }


  }


  Future<void> registerWithEmail(String name,String email,String password,BuildContext context) async {
    _setLoading(true);
    try {


      Response response = await _apiProvider.registerUser(name, email, password);
      print('FormData: $response');

      if (response.statusCode == 200) {
        print(response.data);


        String? token = response.data['access_token'];
        await SharedPreferencesHelper.setString("USER_TOKEN",token!);
        ToastHelper.showToast(msg: "login succesfully", backgroundColor: Colors.green);
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>HomePage()));

      }
    } catch (e) {

      // handle error here
      if (e is DioError) {
        print("DioError: ${e.message}");
        print("-------Error Response: ${e.response}");
        //ToastHelper.showToast(msg: "  ${e.response}", backgroundColor: Colors.red);




      }


    }
    _setLoading(false);
  }

  Future<void> loginWithEmail(String email,String password,BuildContext context) async {
    _setLoading(true);
    try {


      Response response = await _apiProvider.loginUser(email, password);
      print('FormData: $response');

      if (response.statusCode == 200) {
        print(response.data);

        String? token= response.data['access_token'];
        await SharedPreferencesHelper.setString("USER_TOKEN",token!);
        ToastHelper.showToast(msg: "login succesfully", backgroundColor: Colors.green);
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>HomePage()));


      } else {
        print(response.data);
      }
    } catch (e) {
      // handle error here
      if (e is DioError) {
        print("DioError: ${e.message}");
        print("Error Response: ${e.response}");
        if (e.response?.statusCode == 401) {
          ToastHelper.showToast(msg: "لا يوجد مستخدمين بهذه البيانات", backgroundColor: Colors.red);
        }
      }
    }
    _setLoading(false);
  }




}
