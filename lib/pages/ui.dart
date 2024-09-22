import 'package:calendarui/src/features/ui/calendar.dart';
import 'package:flutter/material.dart';

class MyUiComponentPage extends StatelessWidget {
  const MyUiComponentPage({super.key});

  void _onToggleMode() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Component Contain'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const SingleChildScrollView(
        child: Center(
          // padding: EdgeInsets.all(16.0),
          child: Padding(
            // crossAxisAlignment: CrossAxisAlignment.start,
            padding: EdgeInsets.all(16.0),
            // children: [
            //   Text(
            //     "Calendar",
            //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //   ),
            //   SizedBox(height: 20),
            //   SizedBox(
            //     // width: double.infinity,
            //     width: 800,
            //     height: 400,
            //     child: Calendar(),
            //   ),
            // ],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Calendar",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                // IconButton(
                //   icon: const Icon(Icons.nights_stay_sharp),
                //   onPressed: _onToggleMode,
                // ),
                Divider(thickness: 1, height: 20),
                SizedBox(
                  // width: double.infinity,
                  width: 800,
                  height: 400,
                  child: Calendar(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
