import 'package:arquiteture/app/models/cep_model.dart';
import 'package:arquiteture/app/viewmodels/apicep_viewmodel.dart';
import 'package:flutter/cupertino.dart';

class HomeController{

  final ApiCedpViewModel viewModel;
  HomeController({this.viewModel});

  ValueNotifier<CepModel> get cep => viewModel.apiCepModel;

  getCep(){
    viewModel.fill();
  }

}