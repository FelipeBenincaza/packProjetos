library infpack;

/// A Calculator.
class ValidaQuestionario {

  //verifica se a localização foi capturada.
  String verificaGps(String latitude, String longitude) => latitude.isEmpty && longitude.isEmpty ?
      'Não foi capturada a localização da abertura do questionário. Confirmar salvar sem capturar?' :
      '';

  String verificaQuesitosRespondidos(String quesito1, String quesito2, String quesito3, String quesito4, String quesito5, String quesito6) {
    if (quesito1 == 'Selecione')
      return 'Favor preencher o quesito 1.1.';

    if (quesito2 == 'Selecione')
      return 'Favor preencher o quesito 1.2.';

    if (quesito3 == 'Selecione')
      return 'Favor preencher o quesito 1.3.';

    if (quesito4 == 'Selecione')
      return 'Favor preencher o quesito 1.4.';

    if (quesito5 == 'Selecione')
      return 'Favor preencher o quesito 1.5.';

    if (quesito6 == 'Selecione')
      return 'Favor preencher o quesito 1.6.';

    return '';
  }
}