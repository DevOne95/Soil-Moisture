import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoistureLevel extends StatelessWidget {
  const MoistureLevel({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MoistureLevelModel> moistureLevels = [
      MoistureLevelModel(label: 'Dry', value: 23),
      MoistureLevelModel(label: 'Moist', value: 55),
      MoistureLevelModel(label: 'Optimal', value: 60),
      MoistureLevelModel(label: 'Saturated', value: 90),
    ];
    return SizedBox(
      width: Get.width,
      height: Get.height * 0.4,
      child: ListView.builder(
        itemCount: moistureLevels.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Label: ${moistureLevels[index].label}'),
            subtitle: Text('Value: ${moistureLevels[index].value.toString()}'),
            // You can customize the ListTile as needed
          );
        },
      ),
    );
  }
}

class MoistureLevelModel {
  final String label;
  final double value;

  MoistureLevelModel({required this.label, required this.value});
}
