import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soil_moisture_app/dashboard.dart';
import 'package:soil_moisture_app/guide.dart';
import 'package:soil_moisture_app/home_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return GetMaterialApp(
      title: 'Soil Moisture Monitoring',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 8, 142, 11)),
        useMaterial3: true,
      ),
      home: const Dashboard(),
      getPages: [
        GetPage(name: '/', page: () => const Dashboard()),
        GetPage(name: '/guide', page: () => const Guide()),
      ],
    );
  }
}
