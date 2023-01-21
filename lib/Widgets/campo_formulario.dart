import 'package:flutter/material.dart';

import '../Uteis/textos.dart';

class CampoFormulario extends StatelessWidget {
  CampoFormulario(
      {Key? key,
      required this.label,
      required this.controller})
      : super(key: key);

  String label;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            border: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),
            labelText: label,
            hintStyle: const TextStyle(color: Colors.black)),
      ),
    );
  }
}
