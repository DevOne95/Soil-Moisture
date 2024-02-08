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
    });
    super.onInit();
  }
}
