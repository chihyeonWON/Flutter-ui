import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

// 첫 페이지
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _index = 0; // 페이지 인덱스 0, 1, 2
  var _pages = [
    Page1(),
    Page2(),
    Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // 배경을 흰색으로
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
        title: Text(
          '복잡한 UI',
          style: TextStyle(color: Colors.black), // 글자색을 검은색으로
        ),
        centerTitle: true, // 제목을 가운데로
      ),
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _index = index; // 선택된 탭의 인덱스로 _index를 변경
            });
          },
          currentIndex: _index, // 선택된 인덱스
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: '홈',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: '이용서비스',
              icon: Icon(Icons.assignment),
            ),
            BottomNavigationBarItem(
              label: '내 정보',
              icon: Icon(Icons.account_circle),
            ),
          ]),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }
}

// 상단
Widget _buildTop(){
  return Column(
    children: [
      Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 위젯 사이의 공간을 동일한 비율로 정렬
    children: [
      GestureDetector(
        onTap:() {
          print('클릭');
        },
        child:Column(
          children: <Widget>[
            Icon(
              Icons.local_taxi,
              size:40,
            ),
            Text('택시'),
          ],
        ),
      ),
      Column(
        children: <Widget>[
          Icon(
            Icons.local_taxi,
            size:40,
          ),
          Text('블랙'),
        ],
      ),
      Column(
        children: <Widget>[
          Icon(
            Icons.local_taxi,
            size:40,
          ),
          Text('바이크'),
        ],
      ),
      Column(
        children: <Widget>[
          Icon(
            Icons.local_taxi,
            size:40,
          ),
          Text('대리'),
        ],
      ),
    ],
      ),
      SizedBox( // 20만큼의 여백 표현
        height:20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 위젯 사이의 공간을 동일한 비율로 정렬
        children: [
          Column(
            children: <Widget>[
              Icon(
                Icons.local_taxi,
                size:40,
              ),
              Text('택시'),
            ],
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.local_taxi,
                size:40,
              ),
              Text('블랙'),
            ],
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.local_taxi,
                size:40,
              ),
              Text('바이크'),
            ],
          ),
          Opacity(
            opacity:0.0,
            child:Column(
              children: <Widget>[
                Icon(
                  Icons.local_taxi,
                  size:40,
                ),
                Text('대리'),
              ],
            ),
          )
        ],
      ),
    ],
  );
}

// 중단
Widget _buildMiddle() {
  return Text('Middle');
}

// 하단
Widget _buildBottom() {
  return Text('Bottom');
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '이용서비스 페이지',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '내 정보 페이지',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
