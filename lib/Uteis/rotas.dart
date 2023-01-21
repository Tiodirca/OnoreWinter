import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onorewinter/Telas/tela_inicial.dart';
import 'package:onorewinter/Telas/tela_login.dart';

import 'constantes.dart';

class Rotas {
  static GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Recebe os parâmetros na chamada do Navigator.
    final args = settings.arguments;
    switch (settings.name) {
      case Constantes.rotasTelaInicial:
        return MaterialPageRoute(builder: (_) => const TelaInicial());
      case Constantes.rotasTelaLogin:
        return MaterialPageRoute(builder: (_) => const TelaLogin());
    }
    // Se o argumento não é do tipo correto, retorna erro
    return erroRota(settings);
  }

  //metodo para exibir tela de erro
  static Route<dynamic> erroRota(RouteSettings settings) {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Telas não encontrada!"),
        ),
        body: Container(
          color: Colors.red,
          child: const Center(
            child: Text("Telas não encontrada."),
          ),
        ),
      );
    });
  }
}
