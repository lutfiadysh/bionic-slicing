import 'package:bionic_test_slicing/core/theme/main_fonts.dart';
import 'package:bionic_test_slicing/data/entitites/courses_dummy_models.dart';
import 'package:bionic_test_slicing/persentation/widget/courses/courses_card.dart';
import 'package:flutter/material.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
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
                    "assets/orange-header.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                      )
                    ],
                  ),
                  Center(
                    child: Text(
                      'Lorem Ipsum ',
                      style: MainFonts.primaryFonts.copyWith(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 25,
                        color: Colors.black,
                      ),
                      hintText: 'Search',
                      hintStyle: MainFonts.primaryFonts.copyWith(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(color: Colors.purple),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15, bottom: 15),
                    width: MediaQuery.of(context).size.width / 4,
                    height: 30,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.purple,
                    ),
                    child: Center(
                      child: Text(
                        "Lorem ipsum ",
                        style: MainFonts.primaryFonts.copyWith(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet",
                    style: MainFonts.primaryFonts.copyWith(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet lorem ipsum dolor sit ametasdasdliremuipsumldo dolor sitasdakdsa ametloremipsumdsad",
                    style: MainFonts.primaryFonts.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                  Column(
                      children: CoursesDummyModels.fetchCoursesDummy().map((e) {
                    return CoursesCard(
                      title: e.title,
                      desc: e.desc,
                    );
                  }).toList()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
