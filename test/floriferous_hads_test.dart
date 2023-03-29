import 'package:floriferous_hads/floriferous_hads.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

  test('obtener carta lily', () {
    Carta cartaLily = new Carta();
    expect(cartaLily.cartasFlor[5].toString(), '[Lily, White, Ladybug, flor]');
  });

  test('obtener carta daisy', () {
    Carta cartaLily = new Carta();
    expect(cartaLily.cartasFlor[13].toString(), '[Daisy, Pink, sinBug, flor]');
  });
}


class Carta {

  final List<String> flor = ['Daisy','Lily','Mum','Puppy','Tulip'];
  final List<String> color = ['White','Yellow','Orange','Pink','Purple'];
  final List<String> bug = ['Bee','Beetle','Butterfly','Ladybug','Moth', 'sinBug'];
  final List<String> tipoCarta = ['flor', 'objetivo', 'deseos'];
  late final List<List<String>> cartasFlor = [
    //lily
    [flor[1], color[0],bug[5], tipoCarta[0]], [flor[1], color[1],bug[5], tipoCarta[0]],
    [flor[1], color[2],bug[5], tipoCarta[0]], [flor[1], color[3],bug[5], tipoCarta[0]],
    [flor[1], color[4],bug[5], tipoCarta[0]], [flor[1], color[0],bug[3], tipoCarta[0]],
    [flor[1], color[1],bug[1], tipoCarta[0]], [flor[1], color[2],bug[2], tipoCarta[0]],
    [flor[1], color[3],bug[4], tipoCarta[0]], [flor[1], color[4],bug[0], tipoCarta[0]],
    //daisy
    [flor[0], color[0],bug[5], tipoCarta[0]], [flor[0], color[1],bug[5], tipoCarta[0]],
    [flor[0], color[2],bug[5], tipoCarta[0]], [flor[0], color[3],bug[5], tipoCarta[0]],
    [flor[0], color[4],bug[5], tipoCarta[0]], [flor[0], color[0],bug[3], tipoCarta[0]],
    [flor[0], color[1],bug[1], tipoCarta[0]], [flor[0], color[2],bug[0], tipoCarta[0]],
    [flor[0], color[3],bug[3], tipoCarta[0]], [flor[0], color[4],bug[4], tipoCarta[0]],
    //Mum
    [flor[2], color[0],bug[5], tipoCarta[0]], [flor[2], color[1],bug[5], tipoCarta[0]],
    [flor[2], color[2],bug[5], tipoCarta[0]], [flor[2], color[3],bug[5], tipoCarta[0]],
    [flor[2], color[4],bug[5], tipoCarta[0]], [flor[2], color[0],bug[3], tipoCarta[0]],
    [flor[2], color[1],bug[4], tipoCarta[0]], [flor[2], color[2],bug[1], tipoCarta[0]],
    [flor[2], color[3],bug[0], tipoCarta[0]], [flor[2], color[4],bug[2], tipoCarta[0]],
    //Poppy
    [flor[3], color[0],bug[5], tipoCarta[0]], [flor[3], color[1],bug[5], tipoCarta[0]],
    [flor[3], color[2],bug[5], tipoCarta[0]], [flor[3], color[3],bug[5], tipoCarta[0]],
    [flor[3], color[4],bug[5], tipoCarta[0]], [flor[3], color[0],bug[4], tipoCarta[0]],
    [flor[3], color[1],bug[0], tipoCarta[0]], [flor[3], color[2],bug[3], tipoCarta[0]],
    [flor[3], color[3],bug[2], tipoCarta[0]], [flor[3], color[4],bug[1], tipoCarta[0]],
    //Tulip
    [flor[4], color[0],bug[5], tipoCarta[0]], [flor[4], color[1],bug[5], tipoCarta[0]],
    [flor[4], color[2],bug[5], tipoCarta[0]], [flor[4], color[3],bug[5], tipoCarta[0]],
    [flor[4], color[4],bug[5], tipoCarta[0]], [flor[4], color[0],bug[0], tipoCarta[0]],
    [flor[4], color[1],bug[2], tipoCarta[0]], [flor[4], color[2],bug[4], tipoCarta[0]],
    [flor[4], color[3],bug[1], tipoCarta[0]], [flor[4], color[4],bug[3], tipoCarta[0]]
  ];

  late final List<List<String>> cartaObjetivo = [
    [flor[4], bug[3], bug[2],tipoCarta[1]], [flor[0], flor[2], bug[0],tipoCarta[1]], [flor[2], flor[2], bug[2],tipoCarta[1]],
    [flor[4], flor[4], flor[2],tipoCarta[1]], [flor[1], flor[1], bug[3],tipoCarta[1]], [bug[1], bug[3],bug[0],tipoCarta[1]],
    [flor[3], flor[0], bug[1],tipoCarta[1]], [flor[1], flor[2], flor[4],tipoCarta[1]], [flor[1], flor[3], bug[4],tipoCarta[1]]
  ];

  List revolverMazo(){
    late final List<List<String>> cartasPartida;

    cartasFlor.shuffle();
    List<List<String>> cartasFlorPartida = cartasFlor;
    cartasPartida.add(cartasFlorPartida);

    return cartasPartida;
  }
}