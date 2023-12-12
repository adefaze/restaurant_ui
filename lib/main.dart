import 'package:flutter/material.dart';

void main() {
  runApp(const MyRestaurantBooking());
}

class MyRestaurantBooking extends StatelessWidget {
  const MyRestaurantBooking({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar,
      body: Container(
        padding:
            const EdgeInsets.only(top: 40, left: 25, right: 25, bottom: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Discover',
                  style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/grace.jpg'),
                )
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            SizedBox(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildChipMethod('healthy', true),
                  buildChipMethod('healthy', false),
                  buildChipMethod('healthy', false),
                  buildChipMethod('healthy', false),
                  buildChipMethod('healthy', false),
                  buildChipMethod('healthy', false),
                  buildChipMethod('healthy', false),
                  buildChipMethod('healthy', false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildChipMethod(String name, bool isActive) {
    return Container(
      padding: const EdgeInsets.only(right: 5),
      child: Chip(
        padding: const EdgeInsets.all(8),
        label: Text(
          name,
          style: TextStyle(
              color: isActive ? Colors.white : Colors.black, fontSize: 16),
        ),
        backgroundColor: isActive
            ? Colors.yellow.shade800
            : const Color.fromARGB(255, 231, 231, 231),
      ),
    );
  }
}
