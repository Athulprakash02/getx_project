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
                child: Text('Show alert dialog')),
            ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(Container(
                    child: Wrap(
                      children: [
                        ListTile(
                          title: Text('Light theme'),
                          onTap: () => Get.changeTheme(ThemeData.light()),
                        ),
                        ListTile(
                          title: Text('Dark theme'),
                          onTap: () => Get.changeTheme(ThemeData.dark()),
                        )
                      ],
                    ),
                  ));
                },
                child: Text('Show alert dialog'))
          ],
        ),
      ),
    );
  }
}
