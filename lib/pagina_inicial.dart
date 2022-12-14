import 'package:despesas/app_controller.dart';
import 'package:flutter/material.dart';

class PaginaInicial extends StatefulWidget {
  @override
  State<PaginaInicial> createState() {
    return PaginaInicialStates();
  }
}

class PaginaInicialStates extends State<PaginaInicial> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Switch(
          value: AppController.instace.isDarkTheme,
          onChanged: (value) {
            AppController.instace.changeTheme();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
