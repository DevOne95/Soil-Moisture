import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';
import 'package:soil_moisture_app/moisture_level_model.dart';

class MoistureLevelController extends GetxController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final RxList<MoistureLevelModel> items = RxList<MoistureLevelModel>();

  final RxInt moistureCurrentLevel = 40.obs;
  final RxString moistureCurrentTag = "Normal".obs;

  final RxList<FlSpot> currentListChart = RxList<FlSpot>([]).obs();

  final List<FlSpot> listChart = [
    const FlSpot(0, 52),
    const FlSpot(1, 23),
    const FlSpot(2, 55),
    const FlSpot(3, 60),
    const FlSpot(4, 42),
    const FlSpot(5, 76),
    const FlSpot(6, 60),
  ];

  @override
  void onInit() {
    _firestore.collection('moisture_level').snapshots().listen((snapshot) {
      items.assignAll(
          snapshot.docs.map((doc) => MoistureLevelModel.fromFirestore(doc)));

      // Update the chart when items change
      updateChart();
    });
    super.onInit();
  }

  void updateChart() {
    // Clear currentListChart
    currentListChart.clear();

    // Register 10 FlSpot from items value
    for (int i = 0; i < items.length; i++) {
      if (i >= 10) break; // Break loop if already registered 10 FlSpot
      final item = items[i];
      currentListChart.add(FlSpot(i.toDouble(), item.level.toDouble()));
    }

    // If less than 10 items, add remaining FlSpots with value 0
    while (currentListChart.length < 10) {
      currentListChart.add(FlSpot(currentListChart.length.toDouble(), 0));
    }
  }
}
