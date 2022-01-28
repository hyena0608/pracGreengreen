import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          /** 지도 Widget */
          Container(
              child: Image.asset(
            'images/myImoge.png',
            fit: BoxFit.contain,
          )),
          /** 상세 정보 시작 */
          Container(
            padding: EdgeInsets.only(left: 14),
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Icon(Icons.map),
                Text(
                  '  현재 걸음 수: 400보',
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 14),
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Icon(Icons.timer),
                Text(
                  '  15:20:12',
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              '대충 친환경적이라고 한다.',
              style: TextStyle(fontSize: 20),
            ),
          ),
          /** 주운 쓰레기 개수 Method */
          // Container(
          //   child: ListView(
          //     scrollDirection: Axis.vertical,
          //     children: trashCountResult(),
          //   ),
          // ),
          /** 갤러리 Method */
          // Container(
          //   child: ListView(
          //     scrollDirection: Axis.vertical,
          //     children: myGallery(),
          //   ),
          // ),
          /** 공유 버튼 */
          Container(
              alignment: FractionalOffset.bottomRight,
              child: Icon(Icons.share))
        ],
      ),
    );
  }
}

/** 쓰레기 개수 최종 결과 메소드 */
List<Widget> trashCountResult() {
  List<Widget> results = [];
  return results;
}

/** 내 갤러리 메소드 */
List<Widget> myGallery() {
  List<Widget> results = [];
  return results;
}
