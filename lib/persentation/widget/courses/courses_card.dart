import 'package:bionic_test_slicing/core/theme/main_fonts.dart';
import 'package:flutter/material.dart';

class CoursesCard extends StatelessWidget {
  final String title;
  final String desc;
  const CoursesCard({
    super.key,
    required this.title,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      width: MediaQuery.of(context).size.width - 32,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.yellow[700]!),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: MainFonts.primaryFonts.copyWith(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                desc,
                style: MainFonts.primaryFonts.copyWith(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Image.asset(
            'assets/book-vector.webp',
            width: 40,
            height: 40,
          ),
        ],
      ),
    );
  }
}
