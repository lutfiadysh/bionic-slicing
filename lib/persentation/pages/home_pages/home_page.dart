import 'package:bionic_test_slicing/persentation/pages/home_pages/child/first_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 6,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/orange-header.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: controller,
              children: [
                FirstPage(),
                Container(),
                Container(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        width: MediaQuery.of(context).size.width,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -2),
              color: Colors.black.withOpacity(.12),
              blurRadius: 12,
            )
          ],
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.home_outlined,
              size: 30,
              color: Colors.grey,
            ),
            Icon(
              Icons.person,
              size: 30,
              color: Colors.grey,
            ),
            Icon(
              Icons.fire_truck_outlined,
              size: 30,
              color: Colors.grey,
            ),
            Icon(
              Icons.settings,
              size: 30,
              color: Colors.grey,
            ),
            Icon(
              Icons.menu,
              size: 30,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
