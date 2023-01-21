import 'package:flutter/material.dart';
import 'package:onorewinter/Modelo/produto.dart';
import 'package:onorewinter/Widgets/app_bar_widget.dart';
import 'package:onorewinter/Widgets/card_produto.dart';
import 'package:onorewinter/Widgets/categorias.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  int qtdProdutos = 10;

  List<Produto> listaProdutos = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listaProdutos.add(Produto(
        id: 1,
        descricao: "SD 240 GB Kingston A400, SATA, Leitura:"
            " 500MB/s e Gravação: 350MB/s - SA400S37/24 - SA400S37/240G",
        categoria: "SSD",
        valor: 129.29,
        imagem: "imagem"));
    listaProdutos.add(Produto(
        id: 2,
        descricao: "SD 240 GB Kingston A400, SATA, Leitura:"
            " 500MB/s e Gravação: 350MB/s - SA400S37/240G",
        categoria: "SSD",
        valor: 129.29,
        imagem: "imagem"));
    listaProdutos.add(Produto(
        id: 3,
        descricao: "SD 240 GB Kingston A400, SATA, Leitura:"
            " 500MB/s e Gravação: 350MB/s - SA400S37/240G",
        categoria: "SSD",
        valor: 129.29,
        imagem: "imagem"));
    listaProdutos.add(Produto(
        id: 4,
        descricao: "SD 240 GB Kingston A400, SATA, Leitura:"
            " 500MB/s e Gravação: 350MB/s - SA400S37/240G",
        categoria: "SSD",
        valor: 129.29,
        imagem: "imagem"));
    listaProdutos.add(Produto(
        id: 5,
        descricao: "SD 240 GB Kingston A400, SATA, Leitura:"
            " 500MB/s e Gravação: 350MB/s - SA400S37/240G",
        categoria: "SSD",
        valor: 129.29,
        imagem: "imagem"));
  }

  Widget exibicaoTelaMaiores(int numColunas) => Container(
        margin: const EdgeInsets.all(10),
        child: GridView.count(
          childAspectRatio: 0.7,
          crossAxisCount: numColunas,
          children: List.generate(listaProdutos.length, (index) {
            return CardProduto(
              produto: listaProdutos.elementAt(index),
            );
          }),
        ),
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
                      children: List.generate(listaProdutos.length, (index) {
                        return CardProduto(
                          produto: listaProdutos.elementAt(index),
                        );
                      }),
                    );
                  } else if (larguraTela > 650 && larguraTela < 950) {
                    return exibicaoTelaMaiores(2);
                  } else if (larguraTela > 950 && larguraTela < 1300) {
                    return exibicaoTelaMaiores(3);
                  } else {
                    return exibicaoTelaMaiores(5);
                  }
                },
              )),
        ),
      ),
    );
  }
}
