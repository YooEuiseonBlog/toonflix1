import 'package:flutter/material.dart';
import 'package:toonflix1/widgets/template_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplateScreen(title: "first screen", children: [
      AddCountButton(),
    ]);
  }
}

class AddCountButton extends StatefulWidget {
  const AddCountButton({super.key});

  @override
  State<AddCountButton> createState() => _AddCountButtonState();
}

class _AddCountButtonState extends State<AddCountButton> {
  int counter = 0;
  void onPressed() {
    setState(() {
      counter += 1;
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
        Text(
          '$counter',
          style: const TextStyle(fontSize: 40),
        ),
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
