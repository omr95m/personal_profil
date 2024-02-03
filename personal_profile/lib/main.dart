import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: const Color(0XFF512DA8)),
        debugShowCheckedModeBanner: false,
        home: const MyWidget());
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Column(
          children: [
            const SizedBox(
              height: 170,
            ),
            const Center(
                child: CircleAvatar(
              maxRadius: 60,
              backgroundImage: AssetImage('images/ABOLONA.JPG'),
            )),
            const Text(
              'عمر محمد',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cairo'),
            ),
            const Text(
              'مبرمج تطبيقات ',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              margin: const EdgeInsets.all(8),
              child: ListTile(
                leading: Icon(
                  Icons.call,
                  color: Theme.of(context).primaryColor,
                ),
                title: const Text('+905319346423'),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8),
              child: ListTile(
                leading: Icon(
                  Icons.mail,
                  color: Theme.of(context).primaryColor,
                ),
                title: const Text('abolona2015l@gmail.com'),
              ),
            )
          ],
        ));
  }
}
