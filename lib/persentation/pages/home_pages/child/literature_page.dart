import 'package:bionic_test_slicing/core/theme/main_fonts.dart';
import 'package:bionic_test_slicing/persentation/widget/literature/literature_orang_card.dart';
import 'package:flutter/material.dart';

class LiteraturPage extends StatefulWidget {
  const LiteraturPage({super.key});

  @override
  State<LiteraturPage> createState() => _LiteraturPageState();
}

class _LiteraturPageState extends State<LiteraturPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 6,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/purple-header.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          size: 25,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    width: MediaQuery.of(context).size.width / 6,
                    height: MediaQuery.of(context).size.width / 6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.yellow[700]!),
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/book-vector.webp",
                      ),
                    ),
                  ),
                  Text(
                    "LITERATURE",
                    style: MainFonts.primaryFonts.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet lorem ipsum dlor sit amet Lorem ipsum dolor sit amet lorem ipsum dlor sit amet",
                    textAlign: TextAlign.center,
                    style: MainFonts.primaryFonts.copyWith(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LiteratureOrangeCard(),
                        LiteratureOrangeCard(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize:
                          Size(MediaQuery.of(context).size.width / 2, 50),
                      backgroundColor: Colors.purple,
                    ),
                    child: Text(
                      "Lorem",
                      style: MainFonts.primaryFonts.copyWith(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
