import 'package:get/get.dart';
import 'package:repository_pattern/app/modules/home/controllers/home_controller.dart';

class HomePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true); //
  }
}
