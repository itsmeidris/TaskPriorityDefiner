import 'package:flutter/material.dart';
import 'package:navigation_routing/Models/myTodoCard.dart';
import 'package:navigation_routing/Widgets/ToDoListWidgets(Routes)/cardDesc.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Retrieve the MyTodocard object that was passed as an argument when
    //the DetailsScreen was navigated to.
    final cardDescription = ModalRoute.of(context)!.settings.arguments as MyTodocard;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Screen'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          CardDesc(
              cardIcon: cardDescription.icon,
              cardTitle: cardDescription.title,
              cardSubTitle: cardDescription.subTitle,
              cardDescription: cardDescription.description),

          //Sending the priority of the task data back to the parent screen
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                      context, 
                      {
                        'message' : '${cardDescription.title} is a priority !',
                        'bgClr' : Colors.green
                      }
                    );
                  },
                  child: const Text('A priority !'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                      context, 
                      {
                        'message' : '${cardDescription.title} is not a priority !',
                        'bgClr' : Colors.red
                      }                    
                    );
                  },
                  child: const Text('Not a priority !'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
