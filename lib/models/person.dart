import 'dart:convert';

import 'package:equatable/equatable.dart';

class Person extends Equatable {
  final int id;
  final String name;
  final String email;
  const Person({
    required this.id,
    required this.name,
    required this.email,
  });


  Person copyWith({
    int? id,
    String? name,
    String? email,
  }) {
    return Person(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
    };
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      email: map['email'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Person.fromJson(String source) => Person.fromMap(json.decode(source));

  @override
  String toString() => 'Person(id: $id, name: $name, email: $email)';

  @override
  List<Object> get props => [id, name, email];
}
