import 'package:flutter/material.dart';
import 'package:soil_moisture_app/app_bar.dart';
import 'package:soil_moisture_app/home_controller.dart';
import 'package:soil_moisture_app/logs.dart';
import 'package:soil_moisture_app/moisture_widget.dart';
import 'package:get/get.dart';

class Dashboard extends GetView<HomeController> {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> buttonLabels = ["Water Plant", "Watering plant"];

    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 8, 142, 11),
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              const Positioned(top: 0, child: AppBarWidget()),
              const Positioned(top: 80, child: MoistureWidget()),
              const Positioned(top: 340, child: Logs()),
              Positioned(
                bottom: 0,
                child: SizedBox(
                  width: Get.width,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 5.0, right: 20, bottom: 10.0),
                    child: Obx(
                      () => MaterialButton(
                        color: const Color.fromARGB(255, 8, 142, 11),
                        onPressed: () {
                          if (controller.waterLogController.buttonLabel.value ==
                              0) {
                            controller.waterLogController.buttonLabel.value = 1;
                            controller.waterLogController.buttonLabel.refresh();
                          }
                        },
                        child: Text(
                            buttonLabels[controller
                                .waterLogController.buttonLabel.value],
                            style: const TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
