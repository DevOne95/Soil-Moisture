import 'package:flutter/material.dart';
import 'package:soil_moisture_app/app_bar.dart';
import 'package:soil_moisture_app/logs.dart';
import 'package:soil_moisture_app/moisture_widget.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 8, 142, 11),
        ),
        body: const SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(top: 0, child: AppBarWidget()),
              Positioned(top: 80, child: MoistureWidget()),
              Positioned(top: 340, child: Logs())
            ],
          ),
        ));
  }
}
