class Endereco {
  String rua;
  String bairro;
  String cidade;
  String estado;
  String pais;
  int numResidencia;
  int CEP;

  Endereco(
      {required this.CEP,
      this.rua = "",
      this.bairro = "",
      this.cidade = "",
      this.estado = "",
      this.numResidencia = 0,
      this.pais = ""});
}
