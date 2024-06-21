import 'package:flutter/material.dart';
import 'package:toonflix1/widgets/template_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplateScreen(title: 'second page', children: [
      AddNumListBtn(),
    ]);
  }
}

class AddNumListBtn extends StatefulWidget {
  const AddNumListBtn({super.key});

  @override
  State<AddNumListBtn> createState() => _AddNumListBtnState();
}

class _AddNumListBtnState extends State<AddNumListBtn> {
  List<int> numbers = [];
  void onPressed() {
    setState(() {
      numbers.add(numbers.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Click me',
          style: TextStyle(fontSize: 40),
        ),
        for (var n in numbers) Text('$n'),
        IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Icons.add_rounded,
            size: 50,
          ),
        ),
      ],
    );
  }
}
