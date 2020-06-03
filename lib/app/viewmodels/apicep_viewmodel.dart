import 'package:arquiteture/app/models/cep_model.dart';
import 'package:arquiteture/app/repositories/apicep_repository.dart';
import 'package:flutter/cupertino.dart';

class ApiCedpViewModel{
  final ApiCepRepository repository;

  ApiCedpViewModel(this.repository);

  final apiCepModel = ValueNotifier<CepModel>(null);

  fill() async{
    apiCepModel.value = await repository.getTime();
  }
}