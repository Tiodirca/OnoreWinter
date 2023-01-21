import 'package:flutter/material.dart';

import '../Uteis/constantes.dart';
import '../Uteis/paleta_cores.dart';
import '../Uteis/textos.dart';
import '../Widgets/campo_formulario.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  TextEditingController controllerEmail = TextEditingController(text: "");
  TextEditingController controllerSenha = TextEditingController(text: "");
  final chaveFormulario = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double larguraTela = MediaQuery.of(context).size.width;
    double alturaTela = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
          height: alturaTela,
          width: larguraTela,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: larguraTela * 0.8,
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      width: larguraTela,
                      color: Colors.green,
                    ),
                    Form(
                        key: chaveFormulario,
                        child: Column(
                          children: [
                            CampoFormulario(
                              controller: controllerEmail,
                              label: Textos.labelEmail,
                            ),
                            CampoFormulario(
                              controller: controllerSenha,
                              label: Textos.labelSenha,
                            ),
                          ],
                        )),
                    // BOTOES DE ACAO
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 110,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white70,
                              ),
                              onPressed: () {
                               Navigator.of(context).pushNamed(Constantes.rotasTelaCadUsuarioCliente);
                              },
                              child: Text(
                                Textos.btnCriarConta,
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                textAlign: TextAlign.center,
                              )),
                        ),
                        SizedBox(
                          height: 40,
                          width: 200,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: PaletaCores.corCastanho,
                              ),
                              onPressed: () {
                                if (chaveFormulario.currentState!.validate()) {
                                  print(controllerEmail.text);
                                  print(controllerSenha.text);
                                }
                              },
                              child: Text(
                                Textos.btnAcessar,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
