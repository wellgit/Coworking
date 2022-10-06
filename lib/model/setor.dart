class Setor {
  int? id;
  String nome;
  String responsavel;
  int? qtdeMaquina;
  int? idEmpresa;

  Setor(
      {this.id,
      required this.nome,
      required this.responsavel,
      this.qtdeMaquina,
      this.idEmpresa});

  factory Setor.fromMap(Map<String, dynamic> json) => Setor(
      id: json["id"],
      nome: json["nome"],
      responsavel: json["responsavel"],
      qtdeMaquina: json["qtdeMaquina"],
      idEmpresa: json["idEmpresa"]);

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      "id": id,
      "nome": nome,
      "responsavel": responsavel,
      "qtdeMaquina": qtdeMaquina,
      "idEmpresa": idEmpresa,
    };
    return map;
  }
}
