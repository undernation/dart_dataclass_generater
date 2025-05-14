import 'package:flutter/material.dart';
import 'package:dart_data_class_generator/models/person.dart';
class PersonPage extends StatelessWidget {
  const PersonPage({super.key});

  // 
  Person generatePerson({required int id, required String name, required String email,}) {
    return Person(id: id, name: name, email: email);
  }



  @override
  Widget build(BuildContext context) {
    final person1 = generatePerson(id: 1, name: 'John', email: 'john@gmail.com');
    // 아래 코드(const 일 경우)는 컴파일 오류가 발생하는데, 그 이유는 생성자가 const 로 선언되어 있기 때문이다.
    // const 키워드는 컴파일 타임에 결정되어야 하는 상수를 선언할 때 사용한다.
    // 근데 copyWith 메서드는 런타임에 결정되는 값을 사용하기 때문에 컴파일 오류가 발생한다.
    final person2 = person1.copyWith(id: 2, email: 'johndoe@gmail.com');
    final person3 = generatePerson(id: 1, name: 'John', email: 'john@gmail.com');
    print(person1);
    print(person2);
    print(person3);
    print(person1 == person3);
    // 해시 코드는 해시테이블에서 중복 여부를 확인할 때 사용되는 값?
    // 다트에 기본 이퀄리티는 객체의 주소를 비교하는 것이기 때문에 객체의 주소가 다르면 다른 객체로 취급된다.
    // 따라서 객체의 주소가 같으면 같은 객체로 취급된다.
    // 레퍼런셜 이퀄리티
    print(person1.hashCode);
    print(person3.hashCode);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Person'),
      ),
      body: const Center(
        child: Text('Person'),
      ),
    );
  }
}