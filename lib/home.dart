import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateless VS Stateful'),
      ),
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FirstCol(),
            SecondCol(),
          ],
        ),
      ),
    );
  }
}

class FirstCol extends StatelessWidget {
  const FirstCol({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text('Like it')],
    );
  }
}

class SecondCol extends StatefulWidget {
  const SecondCol({super.key});

  @override
  State<SecondCol> createState() => _SecondColState();
}

class _SecondColState extends State<SecondCol> {
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              liked = !liked;
            });
          },
          icon: Icon(liked ? Icons.star : Icons.star_border_outlined),
        )
      ],
    );
  }
}
