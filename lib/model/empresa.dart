class Empresa {
  int? id;
  String nome;

  Empresa({this.id, required this.nome});

  factory Empresa.fromMap(Map<String, dynamic> json) =>
      Empresa(id: json["id"], nome: json["nome"]);

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {"id": id, "nome": nome};
    return map;
  }
}
