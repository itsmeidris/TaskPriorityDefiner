import 'package:flutter/material.dart';
import 'package:navigation_routing/Screens/ToDosScreen.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TodosScreen(),
    );
  }
}
