import 'package:get/get.dart';

class IdController extends GetxController {
  var idCount = 0;
  void increasing() {
    idCount++;
    update(['unique Id']);
  }

  void decreasing() {
    idCount--;
    update(["unique Id"]);
  }
}
