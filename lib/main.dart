import 'package:flutter/material.dart';

class MyBody extends StatefulWidget {
  const MyBody({super.key});

  @override
  createState() => MyBodyState();
}

class MyBodyState extends State<MyBody> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, i) {
      int index = i + 1;
      return ListTile(
          title: Row(children: [
            //http://numbersapi.com/random/trivia
            SizedBox(
              height: 260, width: 180,
              child: Image.network('https://randomfox.ca/images/$index.jpg',fit: BoxFit.fill),
            ),
            const SizedBox(width: 50),
            Text('Как мило! Это Лисичка $index'),
          ])
      );
    });
  }
}

  void main() =>
      runApp(
          const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Scaffold(body: Center(child: MyBody(),))
          )
      );