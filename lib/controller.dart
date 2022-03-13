import 'package:get/get.dart';

class CounterController extends GetxController {
  int _count = 0;
  get count => _count;
  increase() {
    _count++;
    update();
  }
}
