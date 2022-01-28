class Gallery {
  final String title;
  final String keyword;
  final String gallery;

  Gallery.fromMap(Map<String, dynamic> map):
        title = map['title'],
        keyword = map['keyword'],
        gallery = map['gallery'];

  @override
  String toString() => "Gallery<%title:%keyword>";
}
