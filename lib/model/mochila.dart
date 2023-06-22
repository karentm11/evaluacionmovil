
class Mochila {
  final int id;
  final String tipo;
  final String descripcion;
  final String precio;
  bool read;

  Mochila({
    required this.id,
    required this.tipo,
    required this.descripcion,
    required this.precio,
    this.read = false,
  });
}
