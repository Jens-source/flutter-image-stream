import 'package:flutter/material.dart';
import 'package:flutter_camera/scan_controller.dart';
import 'package:get/get.dart';




class TopImageViewer extends StatelessWidget {
  const TopImageViewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<ScanController>(
        builder: (controller) =>
            Positioned(
              top: 50,
              left: 0,
              child: SizedBox(
                height: 100,
                width: Get.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.imageList.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                          height: 100,
                          width: 75,
                          child: Container(
                              margin: const EdgeInsets.all(3),
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black54,
                                    spreadRadius: 1,
                                    blurRadius: 3,
                                    offset: Offset(
                                        3, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(3),
                                  child: RepaintBoundary(
                                    child: Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: MemoryImage(
                                                controller.imageList[index]),
                                          ),
                                        )),
                                  ))));
                    }),
              ),
            ));
  }
}