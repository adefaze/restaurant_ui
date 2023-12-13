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
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 40.0,
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
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: Colors.grey.shade100,
                      width: 1.0,
                      style: BorderStyle.solid),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1.0,
                      color: Colors.grey.shade300,
                      spreadRadius: 1.0,
                    ),
                  ]),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/food.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'title',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'subtext',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.orange,
                          child: Text(
                            '4.5',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
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
