import 'package:color_xd/const/image.dart';
import 'package:color_xd/controller/home_controller.dart';
import 'package:color_xd/views/Drawer.dart';

import 'package:color_xd/views/home_screen/home_screen.dart';

import 'package:color_xd/views/solution_screen/solution_screen.dart';
import 'package:get/get.dart';
import 'package:color_xd/const/const.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(icHome, width: 26), label: home),
      BottomNavigationBarItem(
          icon: Image.asset(icSol, width: 26), label: solution),
    ];
    var navBody = [
      const HomeScreen(),
      const SolutionScreen(),
    ];

    return Scaffold(
      appBar: AppBar(
          title: "Groot".text.color(Colors.deepPurple).bold.size(30).make()),
      drawer: MyDrawer(),
      body: Column(
        children: [
          Obx(() => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.green,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          type: BottomNavigationBarType.fixed,
          items: navbarItem,
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}
