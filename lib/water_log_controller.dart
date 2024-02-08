import 'package:get/get.dart';
import 'package:soil_moisture_app/watering_logs.dart';

class WaterLogController extends GetxController {
  RxInt buttonLabel = 0.obs;
  RxList<WateringLog> waterLogs = RxList<WateringLog>([]).obs();

  final List<WateringLog> listLogs = [
    WateringLog(status: 'Watered the plant.', date: '2022-01-01'),
    WateringLog(status: 'Watered the plant.', date: '2022-01-05'),
    WateringLog(status: 'Watered the plant.', date: '2022-01-10'),
    WateringLog(status: 'Watered the plant.', date: '2022-01-15'),
  ];

  @override
  void onInit() {
    waterLogs.value = listLogs;
    super.onInit();
  }
}
