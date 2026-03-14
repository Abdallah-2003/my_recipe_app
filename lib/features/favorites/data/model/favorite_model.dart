class FavoriteModel {
  final String id;
  final String title;
  final String image;
  final String time;

  FavoriteModel({
    required this.id,
    required this.title,
    required this.image,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'image': image,
      'time': time,
    };
  }

  factory FavoriteModel.fromMap(Map map) {
    return FavoriteModel(
      id: map['id'],
      title: map['title'],
      image: map['image'],
      time: map['time'],
    );
  }
}