import 'package:get/get.dart';
import 'package:ingressos/screen/list/list_controller.dart';

class ListBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ListController());
  }
}
