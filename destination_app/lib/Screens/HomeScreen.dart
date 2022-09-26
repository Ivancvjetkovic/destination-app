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

class Transport {
  String transport1;
  Icon img;
  String destinationImages;
  String destinationNames;
  String destinationCountry;
  String destinationMark;
  String destinationLocation;
  String dateRange;
  String tourDesc;
  String tourPlan;
  String price;

  Transport({
    required this.img,
    required this.transport1,
    required this.destinationImages,
    required this.destinationNames,
    required this.destinationCountry,
    required this.destinationMark,
    required this.destinationLocation,
    required this.dateRange,
    required this.tourDesc,
    required this.tourPlan,
    required this.price,
  });
}



var imgList = [
  const Icon(Icons.flight,color: Colors.white,),
  const Icon(Icons.train,color: Colors.white,),
  const Icon(Icons.sailing,color: Colors.white,),
  const Icon(Icons.bus_alert,color: Colors.white,)
];

var transportList = ['Flight', 'Train', 'Cruise', 'Bus'];

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
var destinationLocationList = [
  'Eiffel Tower',
  'Chernobil Forest',
  'Island of Michel',
  'Lake Ivy'
];
var dateRangeList = [
  '03 May-12 May',
  '23 Sep-2 Oct',
  '12 Dec-20 Dec',
  '31 Dec-5 Jan'
];

var tourDescList = [
  'Paris is one of the most beautiful cities in the world. It is known worldwide for the Louvre Museum, Notre-Dame cathedral, and the Eiffel tower. It has a reputation of being a romantic and cultural city. The city is also known for its high-quality gastronomy and the terraces of its cafés.',
  'The Chernobyl accident in 1986 was the result of a flawed reactor design that was operated with inadequately trained personnel. The resulting steam explosion and fires released at least 5% of the radioactive reactor core into the environment, with the deposition of radioactive materials in many parts of Europe.',
  'Saint Michael is an archangel, a spiritual warrior in the battle of good versus evil. He is considered a champion of justice, a healer of the sick, and the guardian of the Church. In art Saint Michael is depicted with a sword, a banner, or scales, and is often shown vanquishing Satan in the form of a dragon.',
  'Ivie Lake is a reservoir on the Colorado and Concho Rivers in Concho, Coleman, and Runnels counties, 55 miles east of San Angelo, Texas in the United States. The reservoir was formed in 1990 by the construction of S. W. Freese Dam at the Concho-Coleman county line by Brown and Root.'
];
var tourPlanList = [
  '1.See the Eiffel Tower at night, 2. Sample local life at Paris, 3.Wander through Paris history at Musée Carnavalet',
  'You can take a day trip or a multi day trip to Chernobyl from Kyiv. You can even spend the night thereChernobyl is safe to visit, as long as you follow the rules.The trip costs around \$115 and takes 10-12 hours. Youll spend 5 hours inside the exclusion zone',
  'Enjoy an exciting day trip from Paris to Normandy and visit the UNESCO-recognized Mont Saint Michel,Visit the Benedictine Abbey, a 3-story Gothic masterpiece dedicated to Archangel Michael,Take advantage of your free time and visit the island’s village museum, quaint cafes, and more',
  'Free maps showing recreation areas are available from the controlling authority and from marinas and businesses that sell access permits. More detailed lake maps are available at sporting goods and tackle stores.'
];

var destinationPriceList = [
  '599\$','1099\$','399\$','699\$'
];

var destinationMarkList = ['4.5', '3.9', '4.4', '4.9'];

List<Transport> transportFinal1 = List.generate(
  transportList.length,
  (index) => Transport(
      transport1: transportList[index],
      img: imgList[index],
      destinationImages: destinationImagesList[index],
      destinationNames: destinationNamesList[index],
      destinationCountry: destinationCountryList[index],
      destinationMark: destinationMarkList[index],
      destinationLocation: destinationLocationList[index],
      dateRange: dateRangeList[index],
      tourDesc: tourDescList[index],
      tourPlan: tourPlanList[index],
      price: destinationPriceList[index],
      ),
);

class _DestinationHomeState extends State<DestinationHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
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
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Where would you like to travel today ?',
                    style: TextStyle(
                        color: Colors.black,
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
                                  color:  Color.fromARGB(255, 216, 116, 109),
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
                                transportList[index],
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
                            builder: (context) => TravelPage(
                                transportFinal: transportFinal1[index])));
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
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold),
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
