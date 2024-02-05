import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 60,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset(
              'assets/soil_moisture_logo.svg',
              width: 70,
              height: 50,
            ),
          ),
          const Positioned(
            top: 20,
            left: 70,
            child: Row(
              children: [
                Text(
                  'Soil',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 40, 62, 2)),
                ),
                Text(
                  'mo',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 8, 142, 11)),
                )
              ],
            ),
          ),
          Positioned(
              top: 15,
              right: 10,
              child: Container(
                width: 150,
                height: 35,
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black26, blurRadius: 0.5, spreadRadius: 0.5)
                ], borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Container(
                  width: 150,
                  height: 35,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextField(
                      controller: null,
                      enabled: false,
                      decoration: InputDecoration(
                        label: const Text(
                          'Search',
                          style: TextStyle(color: Colors.black54),
                        ),
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          padding: const EdgeInsets.only(bottom: 1),
                          icon: const Icon(Icons.search),
                          onPressed: () {
                            // _searchController.clear();
                          },
                        ),
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
