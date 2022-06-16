import 'package:flutter_test/flutter_test.dart';

import 'package:pesquisapack/pesquisapack.dart';

void main() {
  final validaQestionario = ValidaQuestionario();
  test('verifica se a localizaçãofoi capturada, valor vem com dados', () {
    expect(validaQestionario.verificaGps('', ''), 'Não foi capturada a localização da abertura do questionário. Confirma salvar sem capturar?');
  });

  test('verifica se a localizaçãofoi capturada, valor vem vazio', () {
    expect(validaQestionario.verificaGps('-22.912758', '-43.227030'), '');
  });

  String sim = 'Sim';
  test('verifica se quesitos foram respondidos, valor vem com dados', () {
        expect(validaQestionario.verificaQuesitosRespondidos(sim, sim, 'Selecione', sim, sim, sim), 'Favor preencher o quesito 1.3.');
    expect(validaQestionario.verificaQuesitosRespondidos('Selecione', sim, 'Selecione', sim, sim, sim), 'Favor preencher o quesito 1.1.');
    expect(validaQestionario.verificaQuesitosRespondidos(sim, sim, sim, sim, 'Selecione', sim), 'Favor preencher o quesito 1.5.');
  });

  test('verifica se quesitos foram respondidos, valor vem vazio', () {
    expect(validaQestionario.verificaQuesitosRespondidos(sim, sim, sim, sim, sim, sim), '');
  });

  test('verifica se quesito7 precisa ser respondido, valor vem com dados', () {
    expect(validaQestionario.verificaQuesito7('Não', 'Selecione'), 'Favor preencher o quesito 1.6.1.');
  });

  test('verifica se quesito7 precisa ser respondido, valor vem vazio', () {
    expect(validaQestionario.verificaQuesito7('Sim', 'Selecione'), '');
    expect(validaQestionario.verificaQuesito7('Não', 'Outro destino'), '');
  });
}
