import 'package:destination_app/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';


 void main(List<String> args) {
  runApp(DestinationAppMain());
}

class DestinationAppMain extends StatelessWidget {
  const DestinationAppMain({super.key});

  @override
  Widget build(BuildContext context) {
    return DestinationHome();
  }
}