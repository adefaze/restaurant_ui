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
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
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
