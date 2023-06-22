import 'mochila.dart';

class Backend {
  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  final _mochilas = [
    Mochila(
      id: 631,
      tipo: 'mochila de princesa',
      descripcion: 'mochila con diseño de princesas con doble bolsillo, con clave de seguridad y con cartuchere',
      precio: '1000',
    ),
      Mochila(
      id: 522,
      tipo: 'mochila spiderman',
      descripcion: 'mochila con diseño de spiderman con doble bolsillo, con clave de seguridad y con cartuchere',
      precio: '2000',
    ),
    Mochila(
      id: 522,
      tipo: 'mochila con ruedas',
      descripcion: 'mochila con ruedas con doble bolsillo, con clave de seguridad y con cartuchere',
      precio: '2000',
    ),
  ];

  List<Mochila> getMochilas() {
    return _mochilas;
  }


  void markMochilaAsRead(int id) {
    final index = _mochilas.indexWhere((mochila) => mochila.id == id);
    _mochilas[index].read = true;
  }

  
  void deleteMochila(int id) {
    _mochilas.removeWhere((mochila) => mochila.id == id);
  }
}
