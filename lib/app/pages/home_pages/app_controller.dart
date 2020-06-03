import 'package:arquiteture/app/interfaces/local_storage_interface.dart';
import 'package:arquiteture/app/models/appconfig_model.dart';
import 'package:arquiteture/app/services/shared_local_storage_service.dart';
import 'package:arquiteture/app/viewmodels/chage_theme_viewmodel.dart';
import 'package:flutter/cupertino.dart';

class AppController{

  static final AppController instance = AppController._();


  AppController._(){
    changeTheViewModel.init();
  }
  final ChangeTheViewModel changeTheViewModel = ChangeTheViewModel(storage: SharedLocalStorageService());

  bool get isDark => changeTheViewModel.configModel.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch => changeTheViewModel.configModel.themeSwitch;
}