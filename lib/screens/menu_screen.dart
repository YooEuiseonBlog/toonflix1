import 'package:flutter/material.dart';
import 'package:toonflix1/widgets/template_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TemplateScreen(title: "menu screen template", children: [
      ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/first');
        },
        child: const Text('first practice'),
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/second');
        },
        child: const Text('second practice'),
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/third');
        },
        child: const Text('third practice'),
      ),
    ]);
  }
}
