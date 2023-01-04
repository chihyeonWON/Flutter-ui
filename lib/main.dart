import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final dummyItems = [
  'https://e-ruda.net/uploads/bbspr/2021-12-01_17-29-16_khikJG_00%EC%97%85%EB%A1%9C%EB%93%9C%EC%9A%A9.jpg',
  'https://thumb.ad.co.kr/article/54/14/34/cf/i/544975-1.jpg',
  'http://www.sisaweek.com/news/photo/202011/139003_130793_3210.jpg'
];

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
    return ListView(
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
  return Padding(
    padding: const EdgeInsets.only(top:20, bottom: 20), // 위 아래 여백 크기 20
    child: Column(
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
    ),
  );
}

// 중단
Widget _buildMiddle() {
  return CarouselSlider(
    options: CarouselOptions(
      height: 150.0,
      autoPlay: true, // 슬라이더 자동으로 넘어가는 기능
    ),
    items: dummyItems.map((url) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                  color: Colors.amber
              ),
              child: ClipRRect( // child를 둥근 사각형으로 자르는 위젯
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network( // 인터넷상의 이미지
                  url,
                  fit:BoxFit.cover, // 화면에 여백 x
                )
              )
          );
        },
      );
    }).toList(),
  );
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
