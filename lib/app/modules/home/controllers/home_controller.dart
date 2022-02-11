import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx_covid/app/routes/app_pages.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  //TODO: Implement HomeController

  var dataTotal = null;
  var dataPenambahan = null;
  var dataProvinsi = null;

  final currentIndex = 0.obs;

  void setCurrentIndex(i) {
    currentIndex.value = i;

    if (currentIndex == 0) {
      Get.toNamed(Routes.HOME);
    } else if (currentIndex == 2) {
      Get.toNamed(Routes.ABOUT);
    }
  }

  Future getData() async {
    var url = Uri.parse('https://data.covid19.go.id/public/api/update.json');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      Map<String, dynamic> data =
          jsonDecode(response.body) as Map<String, dynamic>;

      dataTotal = data["update"]["total"];
      dataPenambahan = data["update"]["penambahan"];
      print('Total ${dataTotal["jumlah_positif"]}');
      print('Penambahan ${dataPenambahan}');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  Future getDataProvinsi() async {
    var url = Uri.parse('https://data.covid19.go.id/public/api/prov.json');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      Map<String, dynamic> data =
          jsonDecode(response.body) as Map<String, dynamic>;

      dataProvinsi = data["list_data"];

      print('Provinsi ${dataProvinsi}');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  void onInit() {
    super.onInit();
    getDataProvinsi();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
