import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/vaksinasi_controller.dart';
import 'package:image_picker/image_picker.dart';

class VaksinasiView extends GetView<VaksinasiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Vaksinasi'),
      ),
      body: Center(
        child: Text('Sedang dalam tahap pengembangan'),
      ),
    );
  }
}
