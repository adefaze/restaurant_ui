import 'package:flutter/material.dart';
import 'package:restuarantuiapp/detail.dart';

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
      home: DetailPage(),
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
                  buildChipMethod('Local Delights ', true),
                  buildChipMethod('Spicy ', false),
                  buildChipMethod('Seafood', false),
                  buildChipMethod('Meaty', false),
                  buildChipMethod('Nigerian Classic', false),
                  buildChipMethod('International', false),
                  buildChipMethod('Beverage', false),
                  buildChipMethod('Breakfast', false),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView(
                children: [
                  imageCardMethod(
                      'Mama Put', 'Best swallow in town', 'food2', 5.0),
                  imageCardMethod('Ose Olohun Food',
                      'Delicious menu at best price', 'food3', 4.5),
                  imageCardMethod(
                      'Iya Meta', 'We are the best, ask around', 'food4', 4.1),
                  imageCardMethod('Iya Oba Canteen',
                      'Eat and lick your fingers', 'food1', 5.0),
                  imageCardMethod(
                      'JMK Food', '5 star food and events', 'food6', 4.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container imageCardMethod(
      String title, String subtext, String image, double ratings) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
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
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/$image.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      subtext,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text(
                    ratings.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ],
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
          style: const TextStyle(color: Colors.black, fontSize: 16),
        ),
        backgroundColor: isActive
            ? Colors.yellow.shade800
            : const Color.fromARGB(255, 231, 231, 231),
      ),
    );
  }
}
