class Joke {
  String title;
  String description;
  bool isFavorite;

  Joke({required this.title, required this.description, this.isFavorite = false});
}

List<Joke> jokes = List.generate(
  20,
      (index) => Joke(
    title: "Joke #$index",
    description: "This is the description for Joke #$index.",
  ),
);
