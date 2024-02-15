class CoursesDummyModels {
  final String title;
  final String desc;

  const CoursesDummyModels({required this.desc, required this.title});

  static List<CoursesDummyModels> fetchCoursesDummy() {
    return [
      const CoursesDummyModels(desc: '50 Courses', title: 'Lorem'),
      const CoursesDummyModels(desc: '25 Courses', title: 'Ipsum'),
      const CoursesDummyModels(desc: '28 Courses', title: 'Dolor')
    ];
  }
}
