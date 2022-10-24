import 'package:flutter/material.dart';

void main() {
  runApp(const ScreenWidget());
}

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView Widget'),
        ),
        body: SimpleWidget(),
      ),
    );
  }
}

class SimpleWidget extends StatelessWidget {
  SimpleWidget({Key? key}) : super(key: key);

  final PageController controller = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Container(
          color: Colors.deepPurple[900],
          child: const Center(
              child: Text(
            'This my application text. Any more bad.',
            style: TextStyle(
              fontFamily: 'PermanentMarker',
              color: Colors.white,
              fontSize: 50,
            ),
          )),
        ),
      ],
    );
  }
}
