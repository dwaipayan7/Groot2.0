import 'dart:io';

import 'package:color_xd/const/const.dart';
import 'package:color_xd/const/image.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:tflite/tflite.dart';
import 'package:image_picker/image_picker.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isload = false;
  List? res;
  File? img;
  final pick = ImagePicker();
  void loadModel() async {
    await Tflite.loadModel(
        model: 'assets/model.tflite', labels: 'assets/labels.txt');
  }

  // var controller=Get.put(HomeController());
  @override
  void initState() {
    loadModel();
    super.initState();
  }

  @override
  void dispose() {
    Tflite.close();
    isload = false;
    super.dispose();
  }

  void pickCam() async {
    var image = await pick.pickImage(source: ImageSource.camera);
    if (image == null) return null;
    setState(() {
      img = File(image.path);
    });

    detectColr(img!);
  }

  void pickGam() async {
    var image = await pick.pickImage(source: ImageSource.gallery);
    if (image == null) return null;
    setState(() {
      img = File(image.path);
    });

    detectColr(img!);
  }

  void detectColr(final File image) async {
    var result = await Tflite.runModelOnImage(
        path: image.path,
        numResults: 2,
        threshold: 0.6,
        imageMean: 127.5,
        imageStd: 127.5);
    setState(() {
      res = result;
      isload = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: context.screenWidth,
      height: context.screenHeight,
      child: Column(
        children: [
          // 30.heightBox,
          "".text.size(32).color(Colors.green).bold.make(),
          40.heightBox,
          isload
              ? Column(
                  children: [
                    SizedBox(
                      height: 350,
                      width: context.screenWidth,
                      child: Image.file(img!),
                    ),
                    20.heightBox,
                    "${res![0]['label']}"
                        .text
                        .color(Colors.black)
                        .bold
                        .size(32)
                        .make()
                        .box
                        .make()
                  ],
                )
              : Image.asset(
                  icBl,
                  width: 300,
                ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: pickCam,
                    icon: const Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                      size: 60,
                    )).box.color(Colors.green).size(80, 80).rounded.make(),
                IconButton(
                    onPressed: pickGam,
                    icon: const Icon(
                      Icons.file_copy_rounded,
                      color: Colors.white,
                      size: 60,
                    )).box.color(Colors.green).size(80, 80).rounded.make(),
              ],
            ),
          ),
          20.heightBox
        ],
      ),
    ));
  }
}
