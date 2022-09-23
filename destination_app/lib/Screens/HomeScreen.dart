// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:destination_app/Screens/TravelScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DestinationHome extends StatefulWidget {
  const DestinationHome({super.key});

  @override
  State<DestinationHome> createState() => _DestinationHomeState();
}

class ImagesText {
  String text;
  Icon img;
  String destinationImages;
  String destinationNames;
  String destinationCountry;
  String destinationMark;

  ImagesText({
    required this.img,
    required this.text,
    required this.destinationImages,
    required this.destinationNames,
    required this.destinationCountry,
    required this.destinationMark,
  });
}

var imgList = [
  const Icon(Icons.flight),
  const Icon(Icons.train),
  const Icon(Icons.sailing),
  const Icon(Icons.bus_alert)
];

var textList = ['Flight', 'Train', 'Cruise', 'Bus'];

var destinationImagesList = [
  'images/paris.jpg',
  'images/prolaz.jpg',
  'images/michel.jpg',
  'images/jezero.jpg'
];

List<Widget> destinationImagesListT = [
  Image(image: AssetImage('images/paris.jpg'), fit: BoxFit.cover),
  Image(image: AssetImage('images/prolaz.jpg'), fit: BoxFit.cover),
  Image(image: AssetImage('images/michel.jpg'), fit: BoxFit.cover),
  Image(image: AssetImage('images/jezero.jpg'), fit: BoxFit.cover),
];

var destinationNamesList = [
  'Paris',
  'Ukraine',
  'Mount-Saint-Michel',
  'Lake Ivy',
];

var destinationCountryList = ['France', 'Kyiv', 'France', 'USA'];

var destinationMarkList = ['4.5', '3.9', '4.4', '4.9'];

List<ImagesText> text = List.generate(
  textList.length,
  (index) => ImagesText(
      text: textList[index],
      img: imgList[index],
      destinationImages: destinationImagesList[index],
      destinationNames: destinationNamesList[index],
      destinationCountry: destinationCountryList[index],
      destinationMark: destinationMarkList[index]),
);

class _DestinationHomeState extends State<DestinationHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 107, 181, 241),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 107, 181, 241),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 35,
              color: Colors.black,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(9.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/avatar.png'),
              ),
            )
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Hey user ,',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Where would you like to travel today ?',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, bottom: 20),
                  child: SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: imgList.length, //OVDJE JE VRATITI!!!
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.all(8.0),
                                width: 70,
                                decoration: const BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: imgList[index],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 26),
                              child: Text(
                                textList[index],
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: const [
                      Text(
                        'Top Destination',
                        style: TextStyle(
                            fontSize: 25,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                MasonryGridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  gridDelegate:
                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: destinationImagesList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onDoubleTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TravelPage()));
                      },
                      child: Stack(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(destinationImagesList[index])),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  destinationNamesList[index],
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.white,
                                  ),
                                  Text(destinationCountryList[index],
                                      style:
                                          const TextStyle(color: Colors.white))
                                ],
                              ),
                            ],
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            left: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  height: 25,
                                  width: 55,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 15,
                                      ),
                                      Text(
                                        '${destinationMarkList[index]}',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  size: 40,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(height: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
