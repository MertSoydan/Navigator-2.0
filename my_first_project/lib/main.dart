// ignore_for_file: deprecated_member_use

import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_project/Model/screen_arg.dart';
import 'package:my_first_project/Model/todo_model.dart';
import 'package:my_first_project/container_sample.dart';
import 'package:my_first_project/navigation/screen_a.dart';
import 'package:my_first_project/navigation/screen_b.dart';
import 'package:my_first_project/navigation/screen_home.dart';

void main() {
  runApp(const FlutterDemo());
}

class FlutterDemo extends StatelessWidget {
  const FlutterDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => TodosScreen(
            todos: List.generate(11, (index) => Todo("Title $index", "Desc"))),
        "/homescreen": (context) => const ScreenHome(),
        '/screenA': (context) => const ScreenA(),
        "/screenB": (context) => const ScreenB(),
      },
      title: "Flutter Demo123",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class TodosScreen extends StatelessWidget {
  const TodosScreen({Key? key, required this.todos}) : super(key: key);

  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todos"),
      ),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(todos[index].title),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(todo: todos[index]),
                    ));
              },
            );
          }),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.todo}) : super(key: key);

  final Todo todo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(todo.description),
      ),
    );
  }
}
