class Produto {
  int id;
  String descricao;
  String categoria;
  dynamic valor;
  dynamic imagem;

  Produto(
      {required this.id,
      required this.descricao,
      required this.categoria,
      required this.valor,
      required this.imagem});
}
