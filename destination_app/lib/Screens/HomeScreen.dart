// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:destination_app/Screens/GridView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DestinationHome extends StatefulWidget {
  const DestinationHome({super.key});

  @override
  State<DestinationHome> createState() => _DestinationHomeState();
}

class ImagesText {
  String text;
  Icon img;
  ImagesText({required this.img, required this.text});
}

var textList = ['Flight', 'Train', 'Cruise', 'Bus'];

var imgList = [
  const Icon(Icons.flight),
  const Icon(Icons.train),
  const Icon(Icons.sailing),
  const Icon(Icons.bus_alert)
];

List<ImagesText> text = List.generate(
  textList.length,
  (index) => ImagesText(text: textList[index], img: imgList[index]),
);

class _DestinationHomeState extends State<DestinationHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 100, 204, 103),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 100, 204, 103),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 35,
              color: Colors.black,
            ),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            const Padding(
              padding: EdgeInsets.all(9.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/avatar.png'),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              color: Color.fromARGB(255, 100, 204, 103),
              height: 250,
              width: double.infinity,
              // ignore: prefer_const_constructors
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 120, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      // ignore: prefer_const_constructors
                      Text(
                        'Hey user ,',
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 73, 72, 57),
                            fontWeight: FontWeight.bold),
                      ),
                      // ignore: prefer_const_constructors
                      Text(
                        'Where would you like to travel today ?',
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            color: Color.fromARGB(255, 73, 72, 57),
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 70,
                        child: ListView.builder(
                          //physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: imgList.length, //OVDJE JE VRATITI!!!
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                // margin: EdgeInsets.all(5),

                                width: 70,
                                decoration: const BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: imgList[index],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 70,
                        child: ListView.builder(
                            //physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: imgList.length, //OVDJE JE VRATITI!!!
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 26),
                                child: Text(
                                  textList[index],
                                  // ignore: prefer_const_constructors
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    const Text(
                      'Top Destination',
                      style: TextStyle(
                        fontSize: 25,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 73, 72, 57),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                      color: Color.fromARGB(255, 100, 204, 103),
                      height: 360,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridViewNew(),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
