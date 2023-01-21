import 'package:flutter/material.dart';
import 'package:onorewinter/Uteis/estilo_campos_formularios.dart';
import '../Uteis/textos.dart';

class CampoFormulario extends StatelessWidget {
  CampoFormulario({Key? key, required this.label, required this.controller})
      : super(key: key);

  String label;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    EstiloCamposFormularios estilo = EstiloCamposFormularios();
    return Theme(
        data: estilo.estiloGeralInputs,
        child: Container(
          margin: const EdgeInsets.all(5),
          child: TextFormField(
            controller: controller,
            validator: (value) {
              if (value!.isEmpty) {
                return Textos.erroCampoFormVazio;
              }
              return null;
            },
            decoration: InputDecoration(
                labelText: label,
                hintStyle: const TextStyle(color: Colors.black)),
          ),
        ));
  }
}
