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
      color: PaletaCores.corVerde,
      child: Row(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                color: Colors.greenAccent,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(Textos.nomeAplicacao,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                                fontSize: 20, color: Colors.black)),
                      )
                    ),
                    Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: larguraTela * 0.4,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                      borderSide: BorderSide(width: 2),
                                    ),
                                    hintText: Textos.hintBarraPesquisa),
                                style: const TextStyle(),
                              ),
                            ),
                            SizedBox(
                              width: 35,
                              height: 35,
                              child: FloatingActionButton(
                                onPressed: () {},
                                hoverElevation: 10,
                                hoverColor: Colors.lightGreen,
                                child: const Icon(Icons.search, size: 25),
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: FloatingActionButton(
                      onPressed: () {},
                      hoverColor: Colors.lightGreen,
                      child: const Icon(Icons.shopping_cart, size: 25),
                    ),
                  ),
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: FloatingActionButton(
                      onPressed: () {},
                      hoverColor: PaletaCores.corVerde2,
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
