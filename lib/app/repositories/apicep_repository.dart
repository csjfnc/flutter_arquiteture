import 'package:arquiteture/app/interfaces/client_http_interface.dart';
import 'package:arquiteture/app/models/cep_model.dart';
import 'package:arquiteture/app/repositories/apicep_respository_interface.dart';
import 'package:arquiteture/app/services/client_http_service.dart';

class ApiCepRepository implements IApiCep {
  final ClientHttpService clientHttp;

  ApiCepRepository(this.clientHttp);

  @override
  Future<CepModel> getTime() async {
    var json =
        await clientHttp.getTime("https://viacep.com.br/ws/13053282/json/");

    CepModel cepModel = CepModel.fromJson(json);
    return cepModel;
  }
}
