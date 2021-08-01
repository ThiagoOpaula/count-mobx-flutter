import 'package:mobx/mobx.dart';

class CountController {
  CountController() {
    increment = Action(_increment);
  }

  //Variavel - count
  final _count = Observable(0);
  int get count => _count.value;
  set count(int value) => _count.value = value;

  //Action - Increment
  late Action increment;

  void _increment() {
    count++;
  }
  //Reaction - MOBX vai cuidar disso
}
