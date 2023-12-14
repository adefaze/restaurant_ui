import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const Chip(
        padding: EdgeInsets.fromLTRB(55, 12, 55, 12),
        label: Text(
          'Order Now',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/jollof.jpg'),
              fit: BoxFit.cover,
            )),
          ),
          Positioned(
            top: 40,
            right: 15,
            child: CircleAvatar(
              backgroundColor: Colors.black.withOpacity(.4),
              child: const Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
          ),
          buildAvatarMethod('ben', 120),
          buildAvatarMethod('grace', 90),
          buildAvatarMethod('peter', 70),
          buildAvatarMethod('janet', 50),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.32,
            left: 25,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(
                      color: Colors.white,
                      width: 1.0,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(20.0)),
              alignment: Alignment.center,
              child: const Text(
                '4.5',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.38,
            left: 25,
            child: Container(
              decoration: BoxDecoration(color: Colors.black.withOpacity(.09)),
              child: Column(
                children: const [
                  Text(
                    '150+ reviews, from 75 friends ',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Nigerian Jollof',
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.47,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    buildItemContainer(
                        'Jollof Rice',
                        'This is a sub text, should break into next line when the text is longer',
                        'jollof1'),
                    buildItemContainer(
                        'Fried Rice',
                        'This is a sub text, should break into next line when the text is longer',
                        'fried'),
                    buildItemContainer(
                        'Chicken',
                        'This is a sub text, should break into next line when the text is longer',
                        'chicken'),
                    buildItemContainer(
                        'Vegetable',
                        'This is a sub text, should break into next line when the text is longer',
                        'food'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildItemContainer(String title, String description, String image) {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 25, right: 45, bottom: 10),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/$image.jpg'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10)),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey.shade800),
              ),
              const SizedBox(
                height: 10,
              ),
              // ignore: sized_box_for_whitespace
              Container(
                width: MediaQuery.of(context).size.width - 200,
                child: Text(
                  description,
                  style: TextStyle(fontSize: 14, color: Colors.grey.shade800),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Positioned buildAvatarMethod(String image, double leftPosition) {
    return Positioned(
        top: MediaQuery.of(context).size.height * 0.32,
        left: leftPosition,
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage('assets/avatar/$image.jpg'),
                fit: BoxFit.cover),
          ),
        ));
  }
}
