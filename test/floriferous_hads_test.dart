import 'package:floriferous_hads/floriferous_hads.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

  test('obtener carta lily', () {
    Carta cartaLily = new Carta();
    expect(cartaLily.cartasFlor[5].toString(), '[Lily, White, Ladybug]');
  });

  test('obtener carta daisy', () {
    Carta cartaLily = new Carta();
    expect(cartaLily.cartasFlor[13].toString(), '[Daisy, Pink, sinBug]');
  });
}


class Carta {

  final List<String> flor = ['Daisy','Lily','Mum','Puppy','Tulip'];
  final List<String> color = ['White','Yellow','Orange','Pink','Purple'];
  final List<String> bug = ['Bee','Beetle','Butterfly','Ladybug','Moth', 'sinBug'];
  late final List<String> tipoCarta = ['normal', 'objetivo', 'deseos'];
  late final List<List<String>> cartasFlor = [
    //lily
    [flor[1], color[0],bug[5]], [flor[1], color[1],bug[5]],
    [flor[1], color[2],bug[5]], [flor[1], color[3],bug[5]],
    [flor[1], color[4],bug[5]], [flor[1], color[0],bug[3]],
    [flor[1], color[1],bug[1]], [flor[1], color[2],bug[2]],
    [flor[1], color[3],bug[4]], [flor[1], color[4],bug[0]],
    //daisy
    [flor[0], color[0],bug[5]], [flor[0], color[1],bug[5]],
    [flor[0], color[2],bug[5]], [flor[0], color[3],bug[5]],
    [flor[0], color[4],bug[5]], [flor[0], color[0],bug[3]],
    [flor[0], color[1],bug[1]], [flor[0], color[2],bug[0]],
    [flor[0], color[3],bug[3]], [flor[0], color[4],bug[4]],
    //Mum
    [flor[2], color[0],bug[5]], [flor[2], color[1],bug[5]],
    [flor[2], color[2],bug[5]], [flor[2], color[3],bug[5]],
    [flor[2], color[4],bug[5]], [flor[2], color[0],bug[3]],
    [flor[2], color[1],bug[4]], [flor[2], color[2],bug[1]],
    [flor[2], color[3],bug[0]], [flor[2], color[4],bug[2]],
    //Poppy
    [flor[3], color[0],bug[5]], [flor[3], color[1],bug[5]],
    [flor[3], color[2],bug[5]], [flor[3], color[3],bug[5]],
    [flor[3], color[4],bug[5]], [flor[3], color[0],bug[4]],
    [flor[3], color[1],bug[0]], [flor[3], color[2],bug[3]],
    [flor[3], color[3],bug[2]], [flor[3], color[4],bug[1]],
    //Tulip
    [flor[4], color[0],bug[5]], [flor[4], color[1],bug[5]],
    [flor[4], color[2],bug[5]], [flor[4], color[3],bug[5]],
    [flor[4], color[4],bug[5]], [flor[4], color[0],bug[0]],
    [flor[4], color[1],bug[2]], [flor[4], color[2],bug[4]],
    [flor[4], color[3],bug[1]], [flor[4], color[4],bug[3]]
  ];


}