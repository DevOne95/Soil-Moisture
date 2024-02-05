import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WateringHistory extends StatelessWidget {
  const WateringHistory({super.key});

  @override
  Widget build(BuildContext context) {
    final List<WateringLog> wateringLogs = [
      WateringLog(date: '2022-01-01', plantName: 'Plant A'),
      WateringLog(date: '2022-01-05', plantName: 'Plant B'),
      WateringLog(date: '2022-01-10', plantName: 'Plant C'),
      WateringLog(date: '2022-01-15', plantName: 'Plant D'),
    ];

    return SizedBox(
      width: Get.width,
      height: Get.height * 0.4,
      child: ListView.builder(
        itemCount: wateringLogs.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Date: ${wateringLogs[index].date}'),
            subtitle: Text('Plant Name: ${wateringLogs[index].plantName}'),
            // You can customize the ListTile as needed
          );
        },
      ),
    );
  }
}

class WateringLog {
  final String date;
  final String plantName;

  WateringLog({required this.date, required this.plantName});
}
