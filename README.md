# complexui

## 프로젝트 개요

```
프로젝트 명 : 복잡한 ui 실습

개발 툴 : Android Studio 

개발 언어 : Dart

개발 일시 : 2022-12-26 ~ 2023-01-05

개발자 : Won Chi Hyeon
```

## 화면 구성
![image](https://user-images.githubusercontent.com/58906858/210703248-1d463b34-dc6f-41c4-87d4-7233665c07ec.png)

```

화면 구성은 크게 상단, 중단, 하단으로 나누고 화면 전체는 상하로 스크롤 기능 추가

상단에는 메뉴 7개 배치

중단에는 배너가 자동으로 좌우로 스크롤되는 슬라이더 배치

하단에는 게시글이 표시되는 리스트 배치

탭 메뉴 : 3개의 탭을 네비게이션으로 배치 탭 메뉴를 클릭하면 다른 화면이 표시되도록

```

#### 뼈대 작성
```
처음 뼈대 화면은 StatefulWidget으로 작성하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/210294973-48607790-a7b2-4ee1-8ce5-011e8b46f623.png)

#### BottomNavigationBar 위젯을 이용하여 하단 탭 구성
```
탭을 클릭하면 페이지가 전환되도록 하단 탭 부분을 작성하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/210295475-b0c521d2-c4f2-45ad-9956-6060ed234a7f.png)

#### AppBar 위젯 수정
```
AppBar 위젯을 머터리얼 디자인에서 앱의 통일성을 위해 수정하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/210295708-08f59d2c-f132-4bc7-9334-48c27500b8b0.png)

#### AppBar 오른쪽에 메뉴 추가
```
AppBar 상단 오른쪽에 메뉴를 추가할 수 있는 + 아이콘을 추가하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/210296081-baf1f561-4eab-4793-9f96-49c16c54d483.png)

#### 화면이 3개인 UI 작성
```
StlessWidget 클래스를 상속받은 Page1, Page2, Page3을 생성하고 
Scaffold의 body 프로퍼티에 작성한 페이지가 표시되도록 수정하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/210296542-9d05c5f1-d581-497a-a09e-cc0d9e0e792e.png)

### 상단 부분
```
첫 번째 탭에 해당하는 Page1의 상단, 중단, 하단 부분을 각각 메서드로 분리했습니다.
```
![image](https://user-images.githubusercontent.com/58906858/210474744-f919bf79-0905-4660-938f-feed9cde2fca.png)

#### 메뉴 만들기
```
상단 부분에 택시 아이콘과 글자를 수직으로 배치하여 메뉴를 구성하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/210475077-96e4ffd2-0b08-4b32-a338-8422516da201.png)


#### 메뉴를 한 줄에 4개 만들기
```
Column부분을 Row로 감싼 후(Alt+Enter ->Wrap with Row 기능) Column을 3개 추가하여 메뉴를 한 줄에 4개를 만들었습니다.
```
![image](https://user-images.githubusercontent.com/58906858/210477988-2b81f753-22b9-489f-944e-f36cb74f5fdd.png)

#### 메뉴 두 줄로 만들기
```
첫 번째 줄 Row 위젯을 다시 Column으로 감싼 뒤 Row를 1개 추가하여 메뉴를 두 줄로 구성하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/210479049-47feb03e-dd5f-44f1-bbeb-4b0438e37149.png)

#### 메뉴 7개로 줄이기
```
Opacity 위젯으로 감싸고 투명도를 0.0을 줘서 투명하게 만들어서 메뉴를 총 7개로 구성하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/210479490-13a2845e-c773-42db-8d80-2aae7cde964b.png)

#### 첫 번째 메뉴 클릭 기능 추가
```
첫 번째 메뉴를 GestureDector로 감싸고 onTap 프로퍼티를 줘서 클릭이 가능하도록 하였습니다.
추후에 다른 메뉴들도 클릭이 가능하게 할 수 있고 
메뉴를 클릭했을 때 발생하는 이벤트를 작성할 수 있습니다.
```
![image](https://user-images.githubusercontent.com/58906858/210480691-4fdc4f31-65a1-4fb5-8f52-19a1bc47b807.png)

#### 전체 여백 주기
```
전체 메뉴의 위 아래 여백을 크기 20만큼 주었습니다.
```
![image](https://user-images.githubusercontent.com/58906858/210481025-3d68018f-f2ed-4471-b9ef-4cd9163f7292.png)

### 중단 부분
```
중단 부분에는 좌우로 슬라이드되는 광고를 구성할 것입니다. 
PageView 위젯을 사용해도 되지만 carousel_slider 라이브러리를 사용하면
자동 스크롤 지원 기능 등이 지원되어 훨씬 유용하게 사용할 수 있습니다.
pub.dev 웹 사이트에서 carousel_slider를 검색합니다.
```
![image](https://user-images.githubusercontent.com/58906858/210481315-f33efb7c-3d11-4dd7-8d23-89c18a94a113.png)
```
되도록 많은 사람들이 사용하는 라이브러리를 선택한 후 carousel_slider를 클릭하면 라이브러리의 사용 방법 및 설정 밥벙을
보여주는ㄴ 페이지로 이동하게 됩니다.
```
![image](https://user-images.githubusercontent.com/58906858/210481512-84e84306-2564-4b2d-872e-54f6a963aa09.png)
```
pubspec.yaml 파일을 열고 dependencies: 항목에 carousel_slider: 버전을 추가하고 pub get 버튼을 클릭합니다.
```
![image](https://user-images.githubusercontent.com/58906858/210481863-e865347f-e6e2-4ff5-8934-a799fbf1406d.png)

#### 중단에 슬라이더 작성
```
의존성 추가를 한 후에 Readme 탭에 있는 내용을 토대로 사용합니다.
라이브러리 패키지를 임포트하고 pub.dev 웹사이트의 carousel_slider 페이지의 예제 코드를 중단 메서드에 붙여넣습니다.
```
![image](https://user-images.githubusercontent.com/58906858/210482352-6af19c06-5e78-4c44-bc65-2ec86aeb89aa.png)
```
좌우로 슬라이드되는 형태가 생성되었으나 공사 중임을 알려주는 ui가 표시됩니다.
하단에 bottom overflowed by 51 pixels 이라는 메시지가 발생하는 데 이는
화면 크기보다 51 픽셀 더 크다는 뜻입니다.
```

#### 공사 중 표시 제거
```
공사 중 표시가 뜨는 이유는 화면 크기보다 51픽셀 더 크기 때문이였습니다.
첫 번째 탭의 화면은 Column 위젯으로 구성하였고 Column이나 Row는 화면 크기를 벗어나는 ui는
작성할 수 없습니다. 따라서 Page1의 Column 위젯을 ListView나 SingleScrollView로 감싸서
스크롤이 가능한 화면으로 변경, 공사 중 표시를 삭제할 수 있습니다.
```
![image](https://user-images.githubusercontent.com/58906858/210483036-157e39cb-af25-40ad-885c-126651b2d5d4.png)

#### 광고 배너 슬라이더 추가
```
슬라이더를 원하는 대로 수정할 수 있습니다. 슬라이더에 표시할 이미지를 3장 준비하여
리스트를 작성하였고 중단 메서드를 수정하였습니다.
광고 이미지가 자동으로 슬라이딩 되는 배너를 작성하였습니다.
향후에 이 이미지에 GestureDector로 감싸서 클릭 이벤트를 줘서 클릭 시 
다른 페이지로 이동하도록 변경할 수 있습니다.
```
![image](https://user-images.githubusercontent.com/58906858/210484199-b1ac1558-0e4e-485d-8d8e-231849746a17.png)

### 하단 부분
```
하단에는 공지사항 같은 느낌의 글 목록을 표시할 것입니다.
```

#### ListView 위젯과 ListTile 위젯으로 하단 구현
```
ListTile 안에 아이콘과 텍스트를 넣고 ListView를 10개 생성합니다.
이때 ListView 안에 ListView를 넣을 때(스크롤객체 안에 스크롤 객체) SHRINKwRAP 프로퍼티를 true로 설정해줘야 합니다.
안쪽 리스트의 스크롤을 막아서 전체 스크롤으로 작동하도록 NeverScrollableScrollPhysics 클래스의 인스턴트를 설정하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/210702788-0d473ccf-7536-4f42-8d74-de261cfab631.png)

이로서 복잡한 ui 앱 프로젝트의 개발이 모두 끝이 났습니다.
