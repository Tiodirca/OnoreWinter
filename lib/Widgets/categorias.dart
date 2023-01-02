import 'package:flutter/material.dart';

import '../Uteis/textos.dart';

class CategoriasProdutos extends StatelessWidget {
  const CategoriasProdutos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double larguraTela = MediaQuery.of(context).size.width;
    double alturaTela = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Text(
          Textos.categoriaDescricao,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: alturaTela * 0.8,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("CAT: $index",),
              );
            },
          ),
        )
      ],
    );
  }
}
