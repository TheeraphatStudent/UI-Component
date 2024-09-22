import 'package:calendarui/pages/ui.dart';
import 'package:calendarui/pages/web_view.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CardUIComponent extends StatelessWidget {
  final String title;
  final String subtitle;
  final String buttonText;
  final String pageName;
  final String pageId;
  final IconData icon;

  const CardUIComponent({
    super.key,
    required this.title,
    required this.subtitle,
    required this.buttonText,
    required this.pageName,
    required this.pageId,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(icon, size: 40, color: Colors.blueAccent),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(fontWeight: FontWeight.bold),
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        subtitle,
                        style: Theme.of(context).textTheme.bodyLarge,
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print("Press Button Work!");
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Gonna go to $pageName')),
                );

                String destPage = this.pageId;

                // Route Page
                if (destPage == 'page-003') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyUiComponentPage()));
                }

                if (destPage == 'page-002') {
                  _launchURL("https://flutter.dev/");
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const WebViewScreen(
                  //               dest: "https://flutter.dev/",
                  //             )));
                }

                if (destPage == 'page-001') {
                  _launchURL("https://github.com/theeraphatstudent");
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const WebViewScreen(
                  //               dest: "https://github.com/theeraphatstudent",
                  //             )));
                }
              },
              child: Text(buttonText),
            ),
          ],
        ),
      ),
    );
  }

  _launchURL(String navigateTo) async {
    final Uri url = Uri.parse(navigateTo);
    if (!await launchUrl(url)) {
      throw Exception('Error ): $url');
    }

    // await launch(navigateTo);
  }
}
