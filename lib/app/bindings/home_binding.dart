import 'package:get/get.dart';
import '../controllers/todo_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(TodoController());
  }
}
