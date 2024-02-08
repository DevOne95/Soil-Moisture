import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';
import 'package:soil_moisture_app/moisture_level.dart';

class MoistureLevelController extends GetxController {
  final RxInt moistureCurrentLevel = 40.obs;
  final RxString moistureCurrentTag = "Normal".obs;

  final RxList<MoistureLevelModel> moistureLevel =
      RxList<MoistureLevelModel>([]).obs();

  final RxList<FlSpot> currentListChart = RxList<FlSpot>([]).obs();

  final List<MoistureLevelModel> listLevel = [
    MoistureLevelModel(label: 'Dry', value: 23),
    MoistureLevelModel(label: 'Moist', value: 55),
    MoistureLevelModel(label: 'Optimal', value: 60),
    MoistureLevelModel(label: 'Saturated', value: 90),
  ];

  final List<FlSpot> listChart = [
    FlSpot(0, 52),
    FlSpot(1, 23),
    FlSpot(2, 55),
    FlSpot(3, 60),
    FlSpot(4, 42),
    FlSpot(5, 76),
    FlSpot(6, 60),
  ];

  @override
  void onInit() {
    moistureLevel.value = listLevel;
    currentListChart.value = listChart;
    super.onInit();
  }
}
