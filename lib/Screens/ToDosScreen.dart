import 'package:flutter/material.dart';
import 'package:navigation_routing/Data/tasksData.dart';
import 'package:navigation_routing/Screens/DetailsScreen.dart';
import 'package:navigation_routing/Widgets/ToDoListWidgets(Routes)/toDoCard.dart';

class TodosScreen extends StatefulWidget {
  const TodosScreen({super.key});

  @override
  State<TodosScreen> createState() => _TodosScreenState();
}

class _TodosScreenState extends State<TodosScreen> {

  // A method that launches the DetailsScreen()
  //and awaits the result from Navigator.pop().
  Future<void> navigateToDetailsScreen(
      BuildContext context, int taskIndex) async {
    //Navigator.push() returns a Future that completes after calling
    //Navigator.pop() on the DetailsScreen().
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const DetailsScreen(),
            //The RouteSettings object is created, and the arguments property is set to myTasks[index],
            //which is the MyTodocard object corresponding to the selected todo item.
            settings: RouteSettings(arguments: myTasks[taskIndex])));
    //When a BuildContext is used from a StatefulWidget, the mounted property
    //must be checked after an asynchronous gap.
    if (!context.mounted) return;

    //After the Selection Screen returns a result, hide any previous snackbars
    //and show the new result.
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(
        content: Text(result['message']),
        backgroundColor: result['bgClr'],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Tasks'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      //Use a ListView.builder to display the todo items
      body: ListView.builder(
          itemCount: myTasks.length,
          itemBuilder: (context, index) {
            //Navigate to the DetailsScreen when a todo item is tapped
            return GestureDetector(
              onTap: () {
                navigateToDetailsScreen(context, index);
              },
              child: TodoCard(
                // Pass the todo item properties to the TodoCard widget
                myTaskIcon: myTasks[index].icon,
                myTaskTitle: myTasks[index].title,
                myTaskSubtitle: myTasks[index].subTitle,
              ),
            );
          }),
    );
  }
}
