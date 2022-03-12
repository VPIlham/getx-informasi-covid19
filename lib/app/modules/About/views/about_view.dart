import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/about_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutView extends GetView<AboutController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dibuat oleh Ilham Nurhakim',
              style: TextStyle(fontSize: 20),
            ),
            OutlinedButton(
                onPressed: () async {
                  const url = "https://github.com/VPIlham";
                  launch(url);
                },
                child: Text('My Github'))
          ],
        ),
      ),
    );
  }
}
