class Position {
  final double latitude;
  final double longitude;

  Position.fromMap(Map<String, dynamic> map):
        latitude = map['latitude'],
        longitude = map['longitude'];


}