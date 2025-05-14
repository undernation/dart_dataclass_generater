import 'package:dart_data_class_generator/models/user.dart';
import 'package:dio/dio.dart';

Future<List<User>> fetchUsers() async {
  try{
    // 지연 시뮬레이션 하기 위해 delay 추가
    await Future.delayed(const Duration(seconds: 1));

    final Response response = await Dio().get('https://jsonplaceholder.typicode.com/users');
    // 여기서 response.data 는 web 에서 받아온 json 데이터이다.
    // 이 데이터를 우리가 사용할 수 있는 형태로 변환해야 한다.
    final List userList = response.data;
    print(userList[0]);


    final users = [for (final user in userList) User.fromMap(user)];
    print(users[0]);

    return users;
  } catch (e) {
    rethrow;
  }

}
