import 'package:color_xd/const/const.dart';
import 'package:color_xd/const/image.dart';
// import 'package:color_xd/views/detect_screen/detect_screen.dart';
import 'package:color_xd/views/home_screen/home.dart';
import 'package:color_xd/views/login_screen.dart';

import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const LoginPage());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 142, 220, 145),
      body: Center(
        child: Column(
          children: [
            ((context.screenHeight) / 2.5).heightBox,
            Image.asset(
              icSplash,
              width: 120,
            ),
            10.heightBox,
            appname.text.fontFamily(bold).size(32).white.make(),
            5.heightBox,
            "0.1.0".text.white.size(12).make(),
            const Spacer(),
            credits.text.white.fontFamily(semibold).size(19).make(),
            30.heightBox
          ],
        ),
      ),
    );
  }
}
