import 'package:color_xd/views/splash_screen/splash_screen.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:color_xd/const/const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(
                color: Vx.gray300,
              ),
              elevation: 0.0,
              backgroundColor: Colors.transparent),
          fontFamily: regular),
      home: const SplashScreen(),
    );
  }
}
