class SetorEspecializado {
  int? id;
  String nome;
  String responsavel;
  int? qtdeMaquina;

  SetorEspecializado(
      {this.id,
      required this.nome,
      required this.responsavel,
      this.qtdeMaquina});

  factory SetorEspecializado.fromMap(Map<String, dynamic> json) =>
      SetorEspecializado(
          id: json["id"],
          nome: json["nome"],
          responsavel: json["responsavel"],
          qtdeMaquina: json["qtdeMaquina"]);

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      "id": id,
      "nome": nome,
      "responsavel": responsavel,
      "qtdeMaquina": qtdeMaquina
    };
    return map;
  }
}
