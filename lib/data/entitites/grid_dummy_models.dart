class GridDummyModels {
  final String title;
  final String desc;

  const GridDummyModels({
    required this.title,
    required this.desc,
  });

  static List<GridDummyModels> fetchGridDummy() {
    return [
      const GridDummyModels(
        title: 'Lorem ipsum',
        desc: 'dolor sit amet',
      ),
      const GridDummyModels(
        title: 'Lorem ipsum',
        desc: 'dolor sit amet',
      ),
      const GridDummyModels(
        title: 'Lorem ipsum',
        desc: 'dolor sit amet',
      ),
      const GridDummyModels(
        title: 'Lorem ipsum',
        desc: 'dolor sit amet',
      ),
      const GridDummyModels(
        title: 'Lorem ipsum',
        desc: 'dolor sit amet',
      ),
      const GridDummyModels(
        title: 'Lorem ipsum',
        desc: 'dolor sit amet',
      ),
      const GridDummyModels(
        title: 'Lorem ipsum',
        desc: 'dolor sit amet',
      ),
    ];
  }
}
