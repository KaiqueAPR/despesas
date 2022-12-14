import 'package:despesas/app_controller.dart';
import 'package:despesas/pagina_inicial.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instace,
        builder: (context, child) {
          return MaterialApp(
            theme: AppController.instace.isDarkTheme
                ? ThemeData.dark()
                : ThemeData.light(),
            home: PaginaInicial(),
          );
        });
  } 
}
