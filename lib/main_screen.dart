
import 'package:counter_app_getx/controller/main_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPageScreen extends GetView<MainScreenController> {
  const MainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MainScreenController());
    return Scaffold(
      backgroundColor: Colors.white,
      //appbar
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'Counter App with Getx',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      //body
      body: SizedBox(
        width: MediaQuery.of(context).size.height,
        height: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //value increase or decrease
            Obx(() => 
            Text(
              'Value ${controller.value}',
              style:const TextStyle(
                fontSize: 60.0,
                color: Colors.black,
              ),
            ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    controller.add();
                  },
                  backgroundColor: Colors.blueAccent,
                  child:const  Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40.0,
                ),
                FloatingActionButton(
                  onPressed: () {
                    controller.subtract();
                  },
                  backgroundColor: Colors.blueAccent,
                  child: const Center(
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
