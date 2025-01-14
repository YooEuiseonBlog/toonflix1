import 'package:flutter/material.dart';
import 'package:toonflix1/widgets/template_screen.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TemplateScreen(title: 'thrid page', children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          showTitle
              ? const MyLargeTitle()
              : const Text(
                  "nothing",
                  style: TextStyle(fontSize: 30),
                ),
          IconButton(
            onPressed: toggleTitle,
            icon: const Icon(
              Icons.remove_red_eye,
            ),
          ),
        ],
      ),
    ]);
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  @override
  void initState() {
    super.initState();
    print('initState!');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
