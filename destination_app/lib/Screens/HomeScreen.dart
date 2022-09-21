// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DestinationHome extends StatefulWidget {
  const DestinationHome({super.key});

  @override
  State<DestinationHome> createState() => _DestinationHomeState();
}

class Images {
  Icon img;
  Images({
    required this.img,
  });
}

var imgList = [
  Icon(Icons.flight),
  Icon(Icons.train),
  Icon(Icons.sailing),
  Icon(Icons.bus_alert)
];

//List<Images> images =
//  List.generate(imgList.length, (index) => Images(img: imgList[index]));

class _DestinationHomeState extends State<DestinationHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 35,
              color: Colors.black,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/avatar.png'),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              color: Colors.grey[200],
              height: 250,
              width: double.infinity,
              // ignore: prefer_const_constructors
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 120, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                SizedBox(
                  height: 70,
                  child: ListView.builder(
                    //physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: imgList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          // margin: EdgeInsets.all(5),

                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: imgList[index],
                                )
                              ]),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
