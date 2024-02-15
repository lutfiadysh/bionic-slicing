class VideoDummyModels {
  final String title;
  final String description;

  const VideoDummyModels({required this.title, required this.description});

  static List<VideoDummyModels> fetchVideoListDummy() {
    return [
      const VideoDummyModels(
          title: 'Lorem Ipsum',
          description:
              'Lorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet'),
      const VideoDummyModels(
          title: 'Lorem Ipsum',
          description:
              'Lorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet'),
      const VideoDummyModels(
          title: 'Lorem Ipsum',
          description:
              'Lorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet'),
      const VideoDummyModels(
          title: 'Lorem Ipsum',
          description:
              'Lorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet Lorem Ipsum dolor sit amet'),
    ];
  }
}
