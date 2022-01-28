class Trash {
  final String title;
  final String keyword;
  final int count;

  Trash.fromMap(Map<String, dynamic> map):
        title = map['title'],
        keyword = map['keyword'],
        count = map['count'];

  @override
  String toString() => "Trash<%title:%keyword>";
}