import 'package:arquiteture/app/interfaces/local_storage_interface.dart';
import 'package:arquiteture/app/models/appconfig_model.dart';

class ChangeTheViewModel{
  final ILocalStorage storage;
  final AppConfigModel configModel = AppConfigModel();

  ChangeTheViewModel({this.storage});

  Future init() async{
    await storage.get("isDark").then((value){
      if(value != null){
        configModel.themeSwitch.value = value;
      }
    });
  }

  changeTheme(bool value){
    configModel.themeSwitch.value = value;
    storage.put("isDark", value);
  }

}