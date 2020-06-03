import 'package:arquiteture/app/pages/home_pages/app_controller.dart';
import 'package:arquiteture/app/pages/home_pages/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: AppController.instance.themeSwitch,
      builder: (context, isDark, child){
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            brightness: isDark ? Brightness.dark: Brightness.light,
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: HomePage(),
        );
      },
    );
  }
}