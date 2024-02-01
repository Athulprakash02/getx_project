import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.snackbar('title', 'message',
                      snackPosition: SnackPosition.BOTTOM);
                },
                child: Text('Show snackbar')),
            ElevatedButton(
                onPressed: () {
                  Get.defaultDialog();
                },
                child: Text('Show alert dialog'))
          ],
        ),
      ),
    );
  }
}
