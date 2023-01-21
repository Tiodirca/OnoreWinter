import 'package:flutter/material.dart';
import 'package:onorewinter/Uteis/estilo_campos_formularios.dart';
import 'package:onorewinter/Widgets/campo_formulario.dart';

import '../Uteis/paleta_cores.dart';
import '../Uteis/textos.dart';

class TelaCadastroCliente extends StatefulWidget {
  const TelaCadastroCliente({Key? key}) : super(key: key);

  @override
  State<TelaCadastroCliente> createState() => _TelaCadastroClienteState();
}

class _TelaCadastroClienteState extends State<TelaCadastroCliente> {
  TextEditingController controllerNome = TextEditingController(text: "");
  TextEditingController controllerCPF = TextEditingController(text: "");
  TextEditingController controllerDataNascimento =
      TextEditingController(text: "");
  TextEditingController controllerTelefone = TextEditingController(text: "");
  TextEditingController controllerEmail = TextEditingController(text: "");
  TextEditingController controllerSenha = TextEditingController(text: "");
  TextEditingController controllerConfirmeSenha =
      TextEditingController(text: "");
  final chaveFormulario = GlobalKey<FormState>();
  EstiloCamposFormularios estilo = EstiloCamposFormularios();

  @override
  Widget build(BuildContext context) {
    double larguraTela = MediaQuery.of(context).size.width;
    double alturaTela = MediaQuery.of(context).size.height;

    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: PaletaCores.corAzul,
          title: Text(Textos.telaCriarContaCliente),
        ),
        body: Container(
            margin: const EdgeInsets.all(10),
            height: alturaTela,
            width: larguraTela,
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                        width: larguraTela * 0.8,
                        height: alturaTela * 0.7,
                        child: Form(
                          key: chaveFormulario,
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            children: [
                              SizedBox(
                                width: 400,
                                child: CampoFormulario(
                                    label: Textos.labelNomeCliente,
                                    controller: controllerNome),
                              ),
                              SizedBox(
                                width: 400,
                                child: CampoFormulario(
                                    label: Textos.labelCPF,
                                    controller: controllerCPF),
                              ),
                              SizedBox(
                                  width: 400,
                                  child: Theme(
                                      data: estilo.estiloGeralInputs,
                                      child: Container(
                                        margin: const EdgeInsets.all(5),
                                        child: TextFormField(
                                          readOnly: true,
                                          onTap: () {},
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return Textos.erroCampoFormVazio;
                                            }
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                              labelText:
                                                  Textos.labelDataNascimento,
                                              hintStyle: const TextStyle(
                                                  color: Colors.black)),
                                        ),
                                      ))),
                              SizedBox(
                                width: 400,
                                child: CampoFormulario(
                                    label: Textos.labelTelefone,
                                    controller: controllerTelefone),
                              ),
                              SizedBox(
                                width: 800,
                                child: CampoFormulario(
                                    label: Textos.labelEmail,
                                    controller: controllerEmail),
                              ),
                              SizedBox(
                                width: 400,
                                child: CampoFormulario(
                                    label: Textos.labelSenha,
                                    controller: controllerSenha),
                              ),
                              SizedBox(
                                width: 400,
                                child: CampoFormulario(
                                    label: Textos.labelConfirmeSenha,
                                    controller: controllerConfirmeSenha),
                              ),
                            ],
                          ),
                        )),
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
                ),
              ),
            )),
      ),
      onWillPop: () async {
        return true;
      },
    );
  }
}
