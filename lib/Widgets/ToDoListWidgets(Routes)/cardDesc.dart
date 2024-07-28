import 'package:flutter/material.dart';

class CardDesc extends StatelessWidget {
  final IconData cardIcon;
  final String cardTitle;
  final String cardSubTitle;
  final String cardDescription;

  const CardDesc({
    super.key,
    required this.cardIcon,
    required this.cardTitle,
    required this.cardSubTitle,
    required this.cardDescription,
      
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.grey[350],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(cardIcon),
              title: Text(cardTitle),
              subtitle: Text(cardSubTitle),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                cardDescription,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//The CardDesc widget is responsible for displaying the details of a card, 
//including an icon, title, subtitle, and description. It takes in 
//these properties through its constructor and uses them to build 
//the UI using a Card widget and a Column of ListTile and Padding widgets.

