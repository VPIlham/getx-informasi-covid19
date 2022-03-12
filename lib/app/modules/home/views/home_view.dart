import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_covid/app/themes/style.dart';
import 'package:intl/intl.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:skeletons/skeletons.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final dateFormatJam = new DateFormat.Hm();
  final dateFormat = new DateFormat.yMMMMd('id');
  final formatter = NumberFormat('#,##0', 'ID');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => SalomonBottomBar(
          currentIndex: controller.currentIndex.toInt(),
          onTap: (i) => controller.setCurrentIndex(i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Colors.purple,
            ),

            /// List Dokter
            SalomonBottomBarItem(
              icon: Icon(Icons.group),
              title: Text("Data Vaksinasi"),
              selectedColor: Colors.orange,
            ),

            /// List Transaksi
            SalomonBottomBarItem(
              icon: Icon(Icons.account_circle),
              title: Text("About"),
              selectedColor: Colors.teal,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Update Terkini",
                  style: titleTextStyle,
                ),

                //TERKONFIRMASI, SEMBUH, KASUS AKTIF, MENINGGAL
                FutureBuilder(
                    future: controller.getData(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return SkeletonItem(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SkeletonAvatar(
                                    style: SkeletonAvatarStyle(
                                        shape: BoxShape.circle,
                                        width: 50,
                                        height: 50),
                                  ),
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: SkeletonParagraph(
                                      style: SkeletonParagraphStyle(
                                          lines: 3,
                                          spacing: 6,
                                          lineStyle: SkeletonLineStyle(
                                            randomLength: true,
                                            height: 10,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            minLength: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                6,
                                            maxLength: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                3,
                                          )),
                                    ),
                                  ),
                                  SkeletonAvatar(
                                    style: SkeletonAvatarStyle(
                                        shape: BoxShape.circle,
                                        width: 50,
                                        height: 50),
                                  ),
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: SkeletonParagraph(
                                      style: SkeletonParagraphStyle(
                                          lines: 3,
                                          spacing: 6,
                                          lineStyle: SkeletonLineStyle(
                                            randomLength: true,
                                            height: 10,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            minLength: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                6,
                                            maxLength: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                3,
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SkeletonAvatar(
                                    style: SkeletonAvatarStyle(
                                        shape: BoxShape.circle,
                                        width: 50,
                                        height: 50),
                                  ),
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: SkeletonParagraph(
                                      style: SkeletonParagraphStyle(
                                          lines: 3,
                                          spacing: 6,
                                          lineStyle: SkeletonLineStyle(
                                            randomLength: true,
                                            height: 10,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            minLength: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                6,
                                            maxLength: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                3,
                                          )),
                                    ),
                                  ),
                                  SkeletonAvatar(
                                    style: SkeletonAvatarStyle(
                                        shape: BoxShape.circle,
                                        width: 50,
                                        height: 50),
                                  ),
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: SkeletonParagraph(
                                      style: SkeletonParagraphStyle(
                                          lines: 3,
                                          spacing: 6,
                                          lineStyle: SkeletonLineStyle(
                                            randomLength: true,
                                            height: 10,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            minLength: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                6,
                                            maxLength: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                3,
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " ${dateFormat.format(DateTime.parse(controller.dataPenambahan["created"].toString()))} ${dateFormatJam.format(DateTime.parse(controller.dataPenambahan["created"].toString()))}",
                            style: subtitleTextStyle,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Container(
                            width: double.infinity,
                            height: 210,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 87,
                                        width: 170,
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFCECE),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.4),
                                              spreadRadius: 1,
                                              blurRadius: 10,
                                              offset: Offset(3,
                                                  2), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 7, left: 8),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Terkonfirmasi",
                                                style:
                                                    titleTerkonfirmasiTextStyle,
                                              ),
                                              Text(
                                                formatter.format(
                                                    controller.dataTotal[
                                                        "jumlah_positif"]),
                                                style:
                                                    angkaTerkonfirmasiTextStyle,
                                              ),
                                              Text(
                                                "${formatter.format(controller.dataPenambahan["jumlah_positif"])} (+)",
                                                style:
                                                    smallTerkonfirmasiTextStyle,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 87,
                                        width: 170,
                                        decoration: BoxDecoration(
                                          color: Color(0xffABFFC3),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.4),
                                              spreadRadius: 1,
                                              blurRadius: 10,
                                              offset: Offset(3,
                                                  2), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 7, left: 8),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Sembuh",
                                                style: titleSembuhTextStyle,
                                              ),
                                              Text(
                                                formatter.format(
                                                    controller.dataTotal[
                                                        "jumlah_sembuh"]),
                                                style: angkaSembuhTextStyle,
                                              ),
                                              Text(
                                                "${formatter.format(controller.dataPenambahan["jumlah_sembuh"])} (+)",
                                                style: smallSembuhTextStyle,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 87,
                                        width: 170,
                                        decoration: BoxDecoration(
                                          color: Color(0xffDBE3FF),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.4),
                                              spreadRadius: 1,
                                              blurRadius: 10,
                                              offset: Offset(3,
                                                  2), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 7, left: 8),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Kasus Aktif",
                                                style: titleKasusTextStyle,
                                              ),
                                              Text(
                                                formatter.format(
                                                    controller.dataTotal[
                                                        "jumlah_dirawat"]),
                                                style: angkaKasusTextStyle,
                                              ),
                                              Text(
                                                controller.dataPenambahan[
                                                            "jumlah_dirawat"] <
                                                        0
                                                    ? "${formatter.format(controller.dataPenambahan["jumlah_dirawat"])}"
                                                    : "${formatter.format(controller.dataPenambahan["jumlah_dirawat"])} (+)",
                                                style: smallKasusTextStyle,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 87,
                                        width: 170,
                                        decoration: BoxDecoration(
                                          color: Color(0xffE5E5E5),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.4),
                                              spreadRadius: 1,
                                              blurRadius: 10,
                                              offset: Offset(3,
                                                  2), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 7, left: 8),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Meninggal",
                                                style: titleMeninggalTextStyle,
                                              ),
                                              Text(
                                                formatter.format(
                                                    controller.dataTotal[
                                                        'jumlah_meninggal']),
                                                style: angkaMeninggalTextStyle,
                                              ),
                                              Text(
                                                "${formatter.format(controller.dataPenambahan['jumlah_meninggal'])} (+)",
                                                style: smallMeninggalTextStyle,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    }),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Kasus Provinsi",
                  style: titleTextStyle,
                ),
                //Provinsi
                FutureBuilder(
                  future: controller.getDataProvinsi(),
                  builder: (_, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return SkeletonItem(
                        child: Column(
                          children: [
                            for (var i = 0; i < 10; i++)
                              Row(
                                children: [
                                  SkeletonAvatar(
                                    style: SkeletonAvatarStyle(
                                        shape: BoxShape.circle,
                                        width: 50,
                                        height: 50),
                                  ),
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: SkeletonParagraph(
                                      style: SkeletonParagraphStyle(
                                          lines: 3,
                                          spacing: 6,
                                          lineStyle: SkeletonLineStyle(
                                            randomLength: true,
                                            height: 10,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            minLength: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                6,
                                            maxLength: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                3,
                                          )),
                                    ),
                                  )
                                ],
                              ),
                          ],
                        ),
                      );
                    }
                    return SingleChildScrollView(
                      physics: ScrollPhysics(),
                      child: ListView.builder(
                        itemCount: controller.dataProvinsi.length,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.only(top: 20),
                            height: 110,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Color(0xffEBEBEB),
                                borderRadius: BorderRadius.circular(8)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    controller.dataProvinsi[index]['key'],
                                    style:
                                        titleTextStyle.copyWith(fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Kasus Aktif",
                                              style: titleKasusTextStyle
                                                  .copyWith(fontSize: 12),
                                            ),
                                            Text(
                                              formatter.format(
                                                  controller.dataProvinsi[index]
                                                      ['jumlah_dirawat']),
                                              style: titleKasusTextStyle
                                                  .copyWith(fontSize: 21),
                                            ),
                                            Text(
                                              "${formatter.format(controller.dataProvinsi[index]['penambahan']['positif'])}",
                                              style: titleKasusTextStyle
                                                  .copyWith(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Sembuh",
                                              style: titleSembuhTextStyle
                                                  .copyWith(fontSize: 12),
                                            ),
                                            Text(
                                              formatter.format(
                                                  controller.dataProvinsi[index]
                                                      ['jumlah_sembuh']),
                                              style: titleSembuhTextStyle
                                                  .copyWith(fontSize: 21),
                                            ),
                                            Text(
                                              "${formatter.format(controller.dataProvinsi[index]['penambahan']['sembuh'])} (+)",
                                              style: titleSembuhTextStyle
                                                  .copyWith(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Meninggal",
                                              style: titleMeninggalTextStyle
                                                  .copyWith(fontSize: 12),
                                            ),
                                            Text(
                                              formatter.format(
                                                  controller.dataProvinsi[index]
                                                      ['jumlah_meninggal']),
                                              style: titleMeninggalTextStyle
                                                  .copyWith(fontSize: 21),
                                            ),
                                            Text(
                                              "${formatter.format(controller.dataProvinsi[index]['penambahan']['meninggal'])} (+)",
                                              style: titleMeninggalTextStyle
                                                  .copyWith(fontSize: 12),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
