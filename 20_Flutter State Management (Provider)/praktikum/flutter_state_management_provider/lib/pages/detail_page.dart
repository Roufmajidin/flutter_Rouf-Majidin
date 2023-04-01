import 'package:flutter/material.dart';
import 'package:flutter_state_management_provider/provider/image_manager.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.indexImage});
  final int indexImage;

  @override
  Widget build(BuildContext context) {
    final managerImage = Provider.of<ImageManager>(context, listen: false);
    // final a = Get.arg
    // final image
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 6, 135, 92),
        title: const Text("Detail Image"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Image.asset(managerImage.imageItem[indexImage]),
          ],
        ),
      ),
    );
  }
}
