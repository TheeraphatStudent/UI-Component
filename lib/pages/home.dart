import 'package:calendarui/src/features/ui/card.dart';
import 'package:flutter/material.dart';

class MenuContent {
  static List<Map<String, dynamic>> contains = [
    {
      "title": "Welcome to flutter ui component",
      "subtitle": "Created by TheeraphatStudent!",
      "button": "About Me!",
      "page": "Summary",
      "id": 'page-001',
      "icon": Icons.star
    },
    {
      "title": "Learning Code",
      "subtitle": "Have fun with Flutter!",
      "button": "Go to learn",
      "page": "Learn",
      "id": 'page-002',
      "icon": Icons.code
    },
    {
      "title": "UI Component",
      "subtitle": "Code With Flutter",
      "button": "Let's find something interest!",
      "page": "UI Component",
      "id": 'page-003',
      "icon": Icons.interests_sharp
    }
  ];

  static List<Map<String, dynamic>> getMenu() {
    return contains;
  }
}

class MyHomePage extends StatelessWidget {
  final String appTitle;

  const MyHomePage({super.key, required this.appTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appTitle),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: MenuContent.getMenu().length,
        itemBuilder: (context, index) {
          final item = MenuContent.getMenu()[index];
          return Column(
            children: [
              CardUIComponent(
                title: item['title'],
                subtitle: item['subtitle'],
                buttonText: item['button'],
                pageName: item['page'],
                pageId: item['id'],
                icon: item['icon'],
              ),
              SizedBox(height: 20),
            ],
          );
        },
      ),
    );
  }
}
