import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'datasize.dart';
import 'logic.dart';

void main() {
  runApp(GetMaterialApp(
    home: getdemo(),
  ));
}

class getdemo extends StatelessWidget {
  logic l = Get.put(logic());

  @override
  Widget build(BuildContext context) {
    detasize(context);
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.black12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "o",
                      style: TextStyle(fontSize: 60),
                    ),
                    Obx(() => Text("${l.o.value}")),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "X",
                      style: TextStyle(fontSize: 50),
                    ),
                    Obx(() => Text("${l.x.value}")),
                  ],
                ),
                Column(
                  children: [
                    Obx(
                      () => Text(
                        "${l.turn.value}",
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    Text(
                      "TURN",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              // margin: EdgeInsets.all(20),
              width: detasize.width,
              height: detasize.width,
              color: Colors.black,
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        child: Container(
                            width: (detasize.width! - 20) / 3,
                            height: (detasize.width! - 20) / 3,
                            color: Colors.grey,
                            margin: EdgeInsets.all(5),
                            alignment: Alignment.center,
                            child: Obx(
                              () => Text(
                                "${l.s1.value}",
                                style: TextStyle(fontSize: detasize.width! / 6),
                              ),
                            )),
                        onTap:  l.check[0]
                            ? () {
                                l.setvvl(1);
                                print("${l.check[0]}");
                              }
                            : null,
                      ),
                      InkWell(
                        child: Container(
                            width: (detasize.width! - 20) / 3,
                            height: (detasize.width! - 20) / 3,
                            color: Colors.grey,
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            alignment: Alignment.center,
                            child: Obx(
                              () => Text(
                                "${l.s2.value}",
                                style: TextStyle(fontSize: detasize.width! / 6),
                              ),
                            )),
                        onTap: l.check[1]
                            ? () {
                                l.setvvl(2);
                              }
                            : null,
                      ),
                      InkWell(
                        child: Container(
                            margin: EdgeInsets.all(5),
                            width: (detasize.width! - 20) / 3,
                            height: (detasize.width! - 20) / 3,
                            color: Colors.grey,
                            alignment: Alignment.center,
                            child: Obx(
                              () => Text(
                                "${l.s3.value}",
                                style: TextStyle(fontSize: detasize.width! / 6),
                              ),
                            )),
                        onTap: l.s3.value == ""
                            ? () {
                                l.setvvl(3);
                              }
                            : null,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        child: Container(
                            // padding: EdgeInsets.symmetric(vertical: 5),

                            width: (detasize.width! - 20) / 3,
                            height: (detasize.width! - 20) / 3,
                            color: Colors.grey,
                            margin: EdgeInsets.only(left: 5),
                            alignment: Alignment.center,
                            child: Obx(
                              () => Text(
                                "${l.s4.value}",
                                style: TextStyle(fontSize: detasize.width! / 6),
                              ),
                            )),
                        onTap: l.s4.value == ""
                            ? () {
                                l.setvvl(4);
                              }
                            : null,
                      ),
                      InkWell(
                        child: Container(
                            width: (detasize.width! - 20) / 3,
                            height: (detasize.width! - 20) / 3,
                            color: Colors.grey,
                            margin: EdgeInsets.only(left: 5),
                            alignment: Alignment.center,
                            child: Obx(
                              () => Text(
                                "${l.s5.value}",
                                style: TextStyle(fontSize: detasize.width! / 6),
                              ),
                            )),
                        onTap: l.s5.value == ""
                            ? () {
                                l.setvvl(5);
                              }
                            : null,
                      ),
                      InkWell(
                        child: Container(
                            // padding: EdgeInsets.symmetric(vertical: 5),
                            width: (detasize.width! - 20) / 3,
                            height: (detasize.width! - 20) / 3,
                            color: Colors.grey,
                            margin: EdgeInsets.only(left: 5),
                            alignment: Alignment.center,
                            child: Obx(
                              () => Text(
                                "${l.s6.value}",
                                style: TextStyle(fontSize: detasize.width! / 6),
                              ),
                            )),
                        onTap: l.s6.value == ""
                            ? () {
                                l.setvvl(6);
                              }
                            : null,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        child: Container(
                            // padding: EdgeInsets.symmetric(vertical: 5),

                            width: (detasize.width! - 20) / 3,
                            height: (detasize.width! - 20) / 3,
                            color: Colors.grey,
                            margin: EdgeInsets.only(left: 5),
                            alignment: Alignment.center,
                            child: Obx(
                              () => Text(
                                "${l.s7.value}",
                                style: TextStyle(fontSize: detasize.width! / 6),
                              ),
                            )),
                        onTap: l.s7.value == ""
                            ? () {
                                l.setvvl(7);
                              }
                            : null,
                      ),
                      InkWell(
                        child: Container(
                            width: (detasize.width! - 20) / 3,
                            height: (detasize.width! - 20) / 3,
                            color: Colors.grey,
                            margin: EdgeInsets.only(left: 5),
                            alignment: Alignment.center,
                            child: Obx(
                              () => Text(
                                "${l.s8.value}",
                                style: TextStyle(fontSize: detasize.width! / 6),
                              ),
                            )),
                        onTap: l.s8.value == ""
                            ? () {
                                l.setvvl(8);
                              }
                            : null,
                      ),
                      InkWell(
                        child: Container(
                            // padding: EdgeInsets.symmetric(vertical: 5),
                            width: (detasize.width! - 20) / 3,
                            height: (detasize.width! - 20) / 3,
                            color: Colors.grey,
                            margin: EdgeInsets.all(5),
                            alignment: Alignment.center,
                            child: Obx(
                              () => Text(
                                "${l.s9.value}",
                                style: TextStyle(fontSize: detasize.width! / 6),
                              ),
                            )),
                        onTap: l.s9.value == ""
                            ? () {
                                l.setvvl(9);
                              }
                            : null,
                      )
                    ],
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Obx(
                  () => Text(
                    l.win.value,
                    style: TextStyle(fontSize: 30),
                  ),
                ),

                InkWell(
                  child: Icon(
                    Icons.replay,
                    size: 40,
                  ),
                  onTap: () {
                    l.resetgame();
                  },
                ),
                //Text("PLAYER 1 WON",style: TextStyle(fontSize: detasize.width!/15),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
