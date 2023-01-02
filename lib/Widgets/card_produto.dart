import 'package:flutter/material.dart';

import '../Uteis/textos.dart';

class CardProduto extends StatefulWidget {
  const CardProduto({Key? key}) : super(key: key);

  @override
  State<CardProduto> createState() => _CardProdutoState();
}

class _CardProdutoState extends State<CardProduto> {
  @override
  Widget build(BuildContext context) {
    double larguraTela = MediaQuery.of(context).size.width;
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      elevation: 5,
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.all(10),
                color: Colors.red,
              )),
          Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                        width: larguraTela,
                        child: const Text(
                          "Descricao Produto",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )),
                    Container(
                        margin: const EdgeInsets.all(5),
                        width: larguraTela,
                        child: const Text(
                          "Valor",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                      width: larguraTela,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.shopping_cart_outlined),
                            Text(
                              Textos.btnComprar,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
