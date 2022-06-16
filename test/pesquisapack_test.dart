import 'package:flutter_test/flutter_test.dart';

import 'package:pesquisapack/pesquisapack.dart';

void main() {
  final validaQestionario = ValidaQuestionario();
  test('verificar se a localizaçãofoi capturada', () {
    expect(validaQestionario.verificaGps('', ''), 'Não foi capturada a localização da abertura do questionário. Confirma salvar sem capturar?');
    expect(validaQestionario.verificaGps('-22.912758', '-43.227030'), '');
  });

  test('verifica se quesitos foram respondidos', () {
  String sim = 'Sim';
    expect(validaQestionario.verificaQuesitosRespondidos(sim, sim, sim, sim, sim, sim), '');
    expect(validaQestionario.verificaQuesitosRespondidos(sim, sim, 'Selecione', sim, sim, sim), 'Favor preencher o quesito 1.3.');
    expect(validaQestionario.verificaQuesitosRespondidos('Selecione', sim, 'Selecione', sim, sim, sim), 'Favor preencher o quesito 1.1.');
    expect(validaQestionario.verificaQuesitosRespondidos(sim, sim, sim, sim, 'Selecione', sim), 'Favor preencher o quesito 1.5.');
  });

  test('verifica se quesito7 precisa ser respondido', () {
    expect(validaQestionario.verificaQuesito7('Não', 'Selecione'), 'Favor preencher o quesito 1.6.1.');
    expect(validaQestionario.verificaQuesito7('Sim', 'Selecione'), '');
    expect(validaQestionario.verificaQuesito7('Não', 'Outro destino'), '');
  });
}
