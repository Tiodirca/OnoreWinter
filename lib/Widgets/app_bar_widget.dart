import 'package:flutter/material.dart';
import 'package:onorewinter/Uteis/paleta_cores.dart';

import '../Uteis/textos.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double larguraTela = MediaQuery.of(context).size.width;
    //double alturaTela = MediaQuery.of(context).size.height;
    double alturaBarraStatus = MediaQuery.of(context).padding.top;
    // double alturaAppBar = AppBar().preferredSize.height;
    return Container(
      margin: EdgeInsets.only(top: alturaBarraStatus),
      width: larguraTela,
      color: PaletaCores.corAzul,
      child: Row(
        children: [
          Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(Textos.nomeAplicacao,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white)),
                      )),
                  Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5),
                            width: larguraTela * 0.4,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 1, color: Colors.white),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintStyle:
                                      const TextStyle(color: Colors.black),
                                  hintText: Textos.hintBarraPesquisa),
                            ),
                          ),
                          SizedBox(
                            width: 35,
                            height: 35,
                            child: FloatingActionButton(
                              onPressed: () {},
                              heroTag: "btnPesquisa",
                              backgroundColor: PaletaCores.corOuro,
                              hoverElevation: 10,
                              hoverColor: PaletaCores.corVerde,
                              child: const Icon(Icons.search, size: 25),
                            ),
                          ),
                        ],
                      ))
                ],
              )),
          Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: FloatingActionButton(
                      onPressed: () {},
                      heroTag: "btnCarrinho",
                      hoverColor: Colors.lightGreen,
                      child: const Icon(Icons.shopping_cart, size: 25),
                    ),
                  ),
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: FloatingActionButton(
                      onPressed: () {},
                      heroTag: "btnAcessarConta",
                      hoverColor: PaletaCores.corVerde,
                      child: const Icon(Icons.account_circle, size: 25),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 0);
}
