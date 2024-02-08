import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soil_moisture_app/home_controller.dart';

class MoistureLevel extends GetView<HomeController> {
  const MoistureLevel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height * 0.4,
      child: Obx(
        () => ListView.builder(
          itemCount: controller.moistureLevelController.moistureLevel.length,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: Get.width,
              height: 40,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(controller
                        .moistureLevelController.moistureLevel[index].label),
                    Text(
                        'value: ${controller.moistureLevelController.moistureLevel[index].value.toString()}')
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

class MoistureLevelModel {
  final String label;
  final double value;

  MoistureLevelModel({required this.label, required this.value});
}
