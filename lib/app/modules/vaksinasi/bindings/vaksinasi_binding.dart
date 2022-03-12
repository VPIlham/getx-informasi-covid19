import 'package:get/get.dart';

import '../controllers/vaksinasi_controller.dart';

class VaksinasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VaksinasiController>(
      () => VaksinasiController(),
    );
  }
}
