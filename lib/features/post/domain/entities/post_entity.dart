class PostEntity {
  final String id;
  final String title;
  bool isFavorite;

  PostEntity({
    required this.id,
    required this.title,
    required this.isFavorite,
  });

  void toggleFavorite() {
    isFavorite = !isFavorite;
  }
}
