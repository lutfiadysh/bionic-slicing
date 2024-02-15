import 'package:bionic_test_slicing/persentation/pages/home_pages/child/calendar_page.dart';
import 'package:bionic_test_slicing/persentation/pages/home_pages/child/courses_page.dart';
import 'package:bionic_test_slicing/persentation/pages/home_pages/child/donut_chart_page.dart';
import 'package:bionic_test_slicing/persentation/pages/home_pages/child/grid_page.dart';
import 'package:bionic_test_slicing/persentation/pages/home_pages/child/literature_page.dart';
import 'package:bionic_test_slicing/persentation/pages/home_pages/child/rate_page.dart';
import 'package:bionic_test_slicing/persentation/pages/home_pages/child/statistics_page.dart';
import 'package:bionic_test_slicing/persentation/pages/home_pages/child/video_page.dart';
import 'package:flutter/material.dart';

class FirstPageMenuModels {
  final String title;
  final Widget? pages;

  const FirstPageMenuModels({
    required this.title,
    required this.pages,
  });

  static List<FirstPageMenuModels> fetchFirstPageMenu() {
    return [
      const FirstPageMenuModels(title: 'Calendar', pages: CalendarPage()),
      const FirstPageMenuModels(title: 'Statistics', pages: StatisticsPage()),
      const FirstPageMenuModels(title: 'Literature', pages: LiteraturPage()),
      const FirstPageMenuModels(title: 'Grid', pages: GridPage()),
      const FirstPageMenuModels(title: 'Courses', pages: CoursesPage()),
      const FirstPageMenuModels(
        title: 'Video',
        pages: VideoPage(),
      ),
      const FirstPageMenuModels(title: 'Accuracy', pages: DonutCardPage()),
      const FirstPageMenuModels(title: 'Rate', pages: RatePage()),
    ];
  }
}
