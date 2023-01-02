import 'package:flutter/material.dart';
import 'package:onorewinter/Widgets/app_bar_widget.dart';
import 'package:onorewinter/Widgets/card_produto.dart';
import 'package:onorewinter/Widgets/categorias.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  int qtdProdutos = 100;

  Widget exibicaoTelaMaiores(int numColunas) => Row(
        children: [
          const Expanded(flex: 1, child: CategoriasProdutos()),
          Expanded(
              flex: 5,
              child: GridView.count(
                crossAxisCount: numColunas,
                children: List.generate(qtdProdutos, (index) {
                  return const CardProduto();
                }),
              ))
        ],
      );

  @override
  Widget build(BuildContext context) {
    double larguraTela = MediaQuery.of(context).size.width;
    double alturaTela = MediaQuery.of(context).size.height;
    double alturaBarraStatus = MediaQuery.of(context).padding.top;
    double alturaAppBar = AppBar().preferredSize.height;
    return Scaffold(
      appBar: const AppBarWidget(),
      body: SizedBox(
        width: larguraTela,
        height: alturaTela - alturaBarraStatus - alturaAppBar,
        child: SingleChildScrollView(
          child: SizedBox(
              width: larguraTela,
              height: alturaTela - alturaBarraStatus - alturaAppBar,
              child: LayoutBuilder(
                builder: (p0, p1) {
                  if (larguraTela < 650) {
                    return GridView.count(
                      crossAxisCount: 1,
                      children: List.generate(qtdProdutos, (index) {
                        return const CardProduto();
                      }),
                    );
                  } else if (larguraTela > 650 && larguraTela < 950) {
                    return exibicaoTelaMaiores(2);
                  } else if (larguraTela > 950 && larguraTela < 1300) {
                    return exibicaoTelaMaiores(3);
                  } else {
                    return exibicaoTelaMaiores(4);
                  }
                },
              )),
        ),
      ),
    );
  }
}
