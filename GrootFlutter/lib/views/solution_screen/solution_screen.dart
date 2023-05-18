import 'package:color_xd/const/const.dart';

class SolutionScreen extends StatelessWidget {
  const SolutionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          30.heightBox,
          "Treatment : "
              .text
              .color(Colors.green)
              .fontFamily(bold)
              .size(33)
              .make(),
          20.heightBox,
          "Apple Scrab :".text.size(20).fontFamily(bold).make(),
          appScrab.text.size(18).make(),
          10.heightBox,
          "Apple Black Rot :".text.size(20).fontFamily(bold).make(),
          appBrot.text.size(18).make(),
          10.heightBox,
          "Apple Cedar :".text.size(20).fontFamily(bold).make(),
          appleCed.text.size(18).make(),
          10.heightBox,
          "Corn Cercospora Leaf Spot :".text.size(20).fontFamily(bold).make(),
          cornder.text.size(18).make(),
          10.heightBox,
          "Potato Early Blight :".text.size(20).fontFamily(bold).make(),
          potatoErb.text.size(18).make(),
          10.heightBox,
          "Potato Late Blight :".text.size(20).fontFamily(bold).make(),
          potatoLat.text.size(18).make(),
          10.heightBox,
          "Tomato Bacterial Spot :".text.size(20).fontFamily(bold).make(),
          tomatoBac.text.size(18).make(),
          10.heightBox,
          "Tomato Leaf Mold :".text.size(20).fontFamily(bold).make(),
          tomatoLeafW.text.size(18).make(),
          const Spacer(),
          "License by Tream Droids".text.makeCentered(),
          10.heightBox
        ],
      ),
    ));
  }
}
