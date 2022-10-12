class Setor {
  int? id;
  String nome;
  String responsavel;
  int? qtdeMaquina;
  String codigo;
  int? idEmpresa;

  Setor(
      {this.id,
      required this.nome,
      required this.responsavel,
      this.qtdeMaquina,
      required this.codigo,
      this.idEmpresa});

  factory Setor.fromMap(Map<String, dynamic> json) => Setor(
      id: json["id"],
      nome: json["nome"],
      responsavel: json["responsavel"],
      qtdeMaquina: json["qtdeMaquina"],
      codigo: json["codigo"],
      idEmpresa: json["idEmpresa"]);

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      "id": id,
      "nome": nome,
      "responsavel": responsavel,
      "qtdeMaquina": qtdeMaquina,
      "codigo": codigo,
      "idEmpresa": idEmpresa,
    };
    return map;
  }
}
