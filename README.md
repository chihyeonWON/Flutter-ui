# complexui

## 프로젝트 개요

```
프로젝트 명 : 복잡한 ui 실습

개발 툴 : Android Studio 

개발 언어 : Dart

개발 일시 : 2022-12-26 ~ 

개발자 : Won Chi Hyeon
```

## 화면 구성

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
