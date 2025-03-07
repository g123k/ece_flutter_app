import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Avenir',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyDemo(),
    );
  }
}

class MyDemo extends StatelessWidget {
  const MyDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      appBar: AppBar(leading: BackButton()),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(width: double.infinity, height: 100, color: Colors.red),
            SizedBox(height: screenHeight * 0.2),
            Text('Let\'s add your card', style: TextStyle()),
            Text(
              'Experience the power of financial organization with our platform.',
              style: TextStyle(),
            ),
            SizedBox(height: screenHeight * 0.15),
            FilledButton(
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add),
                  SizedBox(width: 8.0),
                  Text('Add your card'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
