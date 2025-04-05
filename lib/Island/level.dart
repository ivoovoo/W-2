class Level {
  Level(
      {required this.levelIndex,
      required this.stars,
      required this.isComplete,
      required this.lock});

  int levelIndex;
  int stars;
  bool isComplete;
  bool lock;
}
