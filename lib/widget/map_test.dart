import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:greengreen_test/model/model_position.dart';

class MapTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps Demo',
      home: MapSample(),
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final List<Position> positions = [
    Position.fromMap({'latitude': 37.651669032361724, 'longitude': 127.04899659034416})
  ];

  // MapSampleState({this.positions});

  Completer<GoogleMapController> _controller = Completer();

  /** 첫 좌표 (위도, 경도) */
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.65307909584109, 127.04812755460252),
    zoom: 14.4746,
  );

  /** 오른쪽 하단 버튼 (위도, 경도) 좌표 */
  // static final CameraPosition _kLake = CameraPosition(
  //     bearing: 192.8334901395799,
  //     target: LatLng(37.43296265331129, -122.08832357078792),
  //     tilt: 59.440717697143555,
  //     zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: getMarkers(positions),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: _goToTheLake,
      //   label: Text('To the lake!'),
      //   icon: Icon(Icons.directions_boat),
      // ),
    );
  }

/** _kLake로 향하기 */
// Future<void> _goToTheLake() async {
//   final GoogleMapController controller = await _controller.future;
//   controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
// }
}

/** 모든 마커들 가져오기 */
Set<Marker> getMarkers(List<Position> positions) {
  Set<Marker> results = {};
  for (var i = 0; i < positions.length; i++) {
    Marker marker = Marker(
        markerId: MarkerId('$i'),
        position: LatLng(positions[i].latitude, positions[i].longitude));
    results.add(marker);
  }

  return results;
}
