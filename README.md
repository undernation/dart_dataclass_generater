# Flutter Data Model Playground

**Dart · Flutter · Dio · Equatable**

Dart 데이터 모델의 JSON 변환·복사·동등성 비교와 HTTP 응답의 화면 표시를 학습한 Flutter 앱입니다.  
A small Flutter project for data modeling, JSON mapping, and API-backed screens.

## 학습한 내용

- `Person` 모델의 `copyWith`와 객체 동등성 비교
- 사용자·주소·좌표·회사 정보의 중첩 JSON을 Dart 모델로 변환
- `toMap`·`fromMap`·`toJson`·`fromJson` 구현
- Dio로 사용자 목록을 요청하고 목록·상세 화면에 연결
- 모델·데이터 요청·화면·공통 위젯의 파일 분리

## 화면과 데이터 흐름

```text
홈
├── Person: 모델 생성·copyWith·동등성 비교
└── User List
    └── Dio → JSONPlaceholder API → User.fromMap → 사용자 목록·상세
```

## 코드 구조

| 위치 | 내용 |
| --- | --- |
| [lib/main.dart](lib/main.dart) | 앱 진입점·화면 선택 |
| [lib/models](lib/models) | Person·User 및 중첩 데이터 모델 |
| [lib/repositories/fetch_users.dart](lib/repositories/fetch_users.dart) | 사용자 목록 HTTP 요청 |
| [lib/pages](lib/pages) | 모델 확인·목록·상세 화면 |
| [lib/widgets](lib/widgets) | 공통 버튼 |

## 실행

`pubspec.yaml`의 Dart SDK 제약은 `^3.7.2`입니다. 호환되는 Flutter SDK를 준비합니다.

```bash
flutter pub get
flutter run
```

사용자 예제 데이터는 [JSONPlaceholder](https://jsonplaceholder.typicode.com/users)를 사용합니다. 저장소 이름은 데이터 클래스 생성 학습에서 유래했으며, 현재 코드는 모델 활용과 API 통신 예제를 중심으로 구성되어 있습니다.
