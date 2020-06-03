import 'package:arquiteture/app/models/cep_model.dart';

abstract class IApiCep{

  Future<CepModel> getTime();
}