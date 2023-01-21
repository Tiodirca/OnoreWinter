import 'package:flutter/material.dart';
import 'package:onorewinter/Uteis/paleta_cores.dart';

class EstiloCamposFormularios {
  ThemeData get estiloGeralInputs => ThemeData(
        primaryColor: PaletaCores.corAzul,
        inputDecorationTheme: InputDecorationTheme(
          errorStyle: const TextStyle(
              fontSize: 13, color: Colors.red, fontWeight: FontWeight.bold),
          // cor do textfield
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: PaletaCores.corAzul),
            borderRadius: BorderRadius.circular(10),
          ),
          //cor do textfied ao dar erro
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.red),
            borderRadius: BorderRadius.circular(10),
          ),
          //cor do textfied ao ser clicado apos erro
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: PaletaCores.corOuro),
            borderRadius: BorderRadius.circular(10),
          ),
          //cor do textfied ao ser clicado
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: PaletaCores.corOuro),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      );
}
