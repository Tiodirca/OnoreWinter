import 'package:flutter/material.dart';
import 'package:onorewinter/Modelo/produto.dart';
import 'package:onorewinter/Uteis/paleta_cores.dart';

import '../Uteis/textos.dart';

class CardProduto extends StatefulWidget {
  CardProduto({Key? key, required this.produto}) : super(key: key);

  Produto produto;

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
            child: Column(
              children: [
                SizedBox(
                    width: larguraTela,
                    child: Text(
                      widget.produto.descricao,
                      maxLines: 2,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )),
                Container(
                    margin: const EdgeInsets.only(
                        left: 5.0, top: 20.0, bottom: 20.0, right: 5.0),
                    width: larguraTela,
                    child: Text(
                      "RS ${widget.produto.valor.toString()}",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  width: larguraTela,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: PaletaCores.corOuro,
                    ),
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
          )
        ],
      ),
    );
  }
}
