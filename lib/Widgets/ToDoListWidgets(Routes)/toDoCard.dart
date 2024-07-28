import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  final IconData myTaskIcon;
  final String myTaskTitle;
  final String myTaskSubtitle;

  const TodoCard({
    super.key,
    required this.myTaskIcon,
    required this.myTaskTitle,
    required this.myTaskSubtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        child: ListTile(
          contentPadding: const EdgeInsets.all(8),
          leading: Icon(myTaskIcon),
          title: Text(myTaskTitle),
          subtitle: Text(myTaskSubtitle),
        ),
      ),
    );
  }
}


//This code defines a TodoCard widget, which is a StatelessWidget that represents a single todo item. The widget takes three required properties in its constructor:

// myTaskIcon: an IconData that represents the icon to be displayed for the todo item.
// myTaskTitle: a String that represents the title of the todo item.
// myTaskSubtitle: a String that represents the subtitle of the todo item.