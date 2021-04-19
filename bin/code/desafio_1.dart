void main(List<String> args) {
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  List sobrenomes = [];

  String nomePaciente;
  var sobrenomePaciente;
  int idadePaciente;
  var dadosPaciente;
  int contMaior20 = 0;
  for (var item in pacientes) {
    dadosPaciente = item.toString().split('|');
    nomePaciente = dadosPaciente[0];
    var nomeDividido = nomePaciente.split(' ');
    sobrenomePaciente = nomeDividido[nomeDividido.length - 1];

    if (!sobrenomes.contains(sobrenomePaciente)) {
      sobrenomes.add(sobrenomePaciente);
    }

    idadePaciente = int.parse(dadosPaciente[1]);
    if (idadePaciente >= 18) {
      contMaior20++;
    }
  }
  print(
      'Na lista de pacientes temos $contMaior20 pacientes com mais de 20 anos!');

  //print(sobrenomes);

  for (var item in sobrenomes) {
    print('Pacientes da Família $item:');
    for (var familia in pacientes) {
      if (familia.contains(item)) {
        dadosPaciente = familia.toString().split('|');
        nomePaciente = dadosPaciente[0];
        print('Paciente: $nomePaciente');
      }
    }

    print('');
  }

  // Baseado no array acima monte um relatório onde mostre
  // Apresente a quantidade de pacientes com mais de 20 anos
  // Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.
}
