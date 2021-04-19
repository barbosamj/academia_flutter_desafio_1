void main() {
  print('####################################');
  print('Exercicio 1:');
  String nome =
      'Pedro de Alcântara Francisco Antônio João Carlos Xavier de Paula Miguel Rafael Joaquim José Gonzaga Pascoal Cipriano Serafim de Bragança e Bourbon';

  print('O nome tem: ${nome.length} caracteres');

  print('####################################');
  print('Exercício 2:');

  List<String> listaNome = [];
  listaNome.add('Pedro da Silva');
  listaNome.add('Marcio José');
  listaNome.add('Luiz Marcelo');
  listaNome.add('Marcos Paulo');
  listaNome.add('Miriam Aparecida');
  listaNome.add('João Batista');
  listaNome.add('Adalgisa da Silva');
  listaNome.add('João Pedro');
  listaNome.add('Vanderleia da Costa');
  listaNome.add('Jackson Telles');

  for (var item in listaNome) {
    print('Seja bem vindo $item!');
  }

  print('####################################');
  print('Exercício 3:');

  String nomeDivide =
      'Pedro de Alcântara Francisco Antônio João Carlos Xavier de Paula Miguel Rafael Joaquim José Gonzaga Pascoal Cipriano Serafim de Bragança e Bourbon';

  var nomeDividido = nomeDivide.split(' ');

  print('O individuo tem: ${nomeDividido.length} nomes');

  print('####################################');
  print('Exercício 4:');

  List paciente = [
    'Rodrigo Rahman|35',
    'Guilheme Rahman|10',
    'João Rahman|20',
    'Joaquin Rahman|25',
    'Luan Rahman|23'
  ];

  String nomePaciente;
  String idadePaciente;
  var dadosPaciente;
  for (var i = 0; i < paciente.length; i++) {
    dadosPaciente = paciente[i].toString().split('|');
    nomePaciente = dadosPaciente[0];
    idadePaciente = dadosPaciente[1];
    print('$nomePaciente tem $idadePaciente anos');
  }

  print('####################################');
  print('Exercício 5:');

  paciente.removeAt(paciente.length - 1);
  paciente.removeAt(paciente.length - 1);

  for (var i = 0; i < paciente.length; i++) {
    dadosPaciente = paciente[i].toString().split('|');
    nomePaciente = dadosPaciente[0];
    idadePaciente = dadosPaciente[1];
    print('$nomePaciente tem $idadePaciente anos');
  }

  print('####################################');
  print('Exercício 5:');

  for (var i = 0; i < paciente.length; i++) {
    dadosPaciente = paciente[i].toString().split('|');
    nomePaciente = dadosPaciente[0];
    idadePaciente = dadosPaciente[1];
    if (int.parse(idadePaciente) < 18) {
      paciente.removeAt(i);
    } else {
      print('$nomePaciente tem $idadePaciente anos');
    }
  }
  print('A lista tem ${paciente.length} pacientes.');
}
