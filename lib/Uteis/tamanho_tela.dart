import 'dart:io';

class TamanhoTela {

  static verificarTipoDispositivo() {
    // usado para definir tamanhos de iten
    if (Platform.isAndroid || Platform.isIOS) {
      return true;
    } else {
      return false;
    }
  }
}
