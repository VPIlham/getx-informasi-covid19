import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/about_controller.dart';

class AboutView extends GetView<AboutController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Dibuat oleh Ilham Nurhakim',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
