import 'package:arquiteture/app/models/cep_model.dart';
import 'package:arquiteture/app/pages/home_pages/componentes/custom_switch_widget.dart';
import 'package:arquiteture/app/pages/home_pages/home_controller.dart';
import 'package:arquiteture/app/repositories/apicep_repository.dart';
import 'package:arquiteture/app/services/client_http_service.dart';
import 'package:arquiteture/app/viewmodels/apicep_viewmodel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = HomeController(
    viewModel: ApiCedpViewModel(
      ApiCepRepository(ClientHttpService()),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.get_app),
        onPressed: () {
          homeController.getCep();
        },
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            CustomSwitchWidget(),
            ValueListenableBuilder<CepModel>(
              valueListenable: homeController.cep,
              builder: (context, model, child) {
                if (model?.bairro == null) {
                  return CircularProgressIndicator();
                }
                return Text(model.bairro);
              },
            )
          ],
        ),
      ),
    );
  }
}
