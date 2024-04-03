import 'package:ebooks_point_admin/test_page2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Get.to(const TestPage2());
              },
              child: const Text("Button")),
          const Center(
            child: Text("This is test page"),
          ),
        ],
      ),
    );
  }
}
