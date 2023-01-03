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
