import 'package:dart_data_class_generator/pages/user_list_page.dart';
import 'package:flutter/material.dart';
import 'package:dart_data_class_generator/pages/person_page.dart';
import 'package:dart_data_class_generator/widgets/custom_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dart Data Class Generator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: const TextTheme(bodyMedium: TextStyle(fontSize: 18),
        )
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          // 이거는 뭐하는거지??
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: const [
            CustomButton(title: 'Person', child: PersonPage(),),
            CustomButton(title: 'User List', child: UserListPage(),)
          ],
        ),
      ),
    );
  }
}
