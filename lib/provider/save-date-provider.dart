import 'package:flutter/material.dart';
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

class FormDataProvider extends ChangeNotifier {
  GeneralInfoModel generalInfoModel=GeneralInfoModel();
  // Add other form fields as needed

  void updateGeneralInfoModel(GeneralInfoModel model) {
    generalInfoModel = model;
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

}
