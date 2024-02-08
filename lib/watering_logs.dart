import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soil_moisture_app/home_controller.dart';

class WateringHistory extends GetView<HomeController> {
  const WateringHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height * 0.4,
      child: Obx(
        () => ListView.builder(
          itemCount: controller.waterLogController.waterLogs.length,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: Get.width,
              height: 40,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(controller.waterLogController.waterLogs[index].status),
                    Text(controller.waterLogController.waterLogs[index].date),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class WateringLog {
  final String date;
  final String status;

  WateringLog({required this.date, required this.status});
}
